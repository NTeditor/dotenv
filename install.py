import argparse
import subprocess
import os
from pathlib import Path

ROOT_PATH = Path(__file__).parent
HOME_PATH = Path().home()

SUCKLESS_PACKAGES = {"dwm", "slstatus"}


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("packages", nargs="+")
    group = parser.add_mutually_exclusive_group(required=True)
    group.add_argument("-S", dest="sync", help="Installing dotenv", action="store_true")
    group.add_argument("-R", dest="remove", help="Removing dotenv", action="store_true")
    parser.add_argument(
        "-p",
        dest="pacman",
        help="Installing package in pacman/makepkg",
        action="store_true",
    )
    parser.add_argument(
        "-f",
        dest="force",
        help="Force re-build PKGBUILD",
        action="store_true",
    )

    args = parser.parse_args()
    if args.sync:
        sync_cmd(args.packages, args.pacman, args.force)
    elif args.remove:
        remove_cmd(args.packages, args.pacman)


def sync_cmd(packages: list[str], use_pacman: bool, force: bool):
    if not use_pacman:
        print("warn: Use -p flag to install a package in pacman")

    for package in packages:
        package_dotenv = ROOT_PATH / package
        package_config = HOME_PATH / ".config" / package

        if not pre_install_check(package, package_dotenv, package_config):
            continue

        if use_pacman:
            install_with_pacman(package, package_dotenv, force)
        elif package in SUCKLESS_PACKAGES:
            print(f"warn: pacman is required to install '{package}'. Skip..")
            continue

        install_dotenv_symlink(package, package_dotenv, package_config)


def remove_cmd(packages: list[str], use_pacman: bool):
    if not use_pacman:
        print("warn: Use -p flag to remove a package in pacman")

    for package in packages:
        package_config = HOME_PATH / ".config" / package

        if not pre_remove_check(package, package_config):
            continue

        if use_pacman:
            remove_with_pacman(package)
        elif package in SUCKLESS_PACKAGES:
            print(f"warn: pacman is required to remove '{package}'. Skip..")
            continue

        remove_dotenv_symlink(package, package_config)


def pre_install_check(package: str, package_dotenv: Path, package_config: Path) -> bool:
    if package == "xorg":
        raise Exception("xorg autoinstall not support")

    if not package_dotenv.exists():
        print(f"warn: '{package_dotenv}' is not exists. Skip..")
        return False

    if not package_dotenv.is_dir():
        print(f"warn: '{package_dotenv}' is not directory. Skip..")
        return False

    if package_config.exists():
        print(f"warn: '{package_config}' is exists. Skip..")
        return False

    return True


def pre_remove_check(package: str, package_config: Path) -> bool:
    if package == "xorg":
        raise Exception("xorg autoremove not support")

    if package in SUCKLESS_PACKAGES:
        return True

    if not package_config.exists():
        print(f"warn: '{package_config}' is not exists. Skip..")
        return False

    if not package_config.is_symlink():
        print(f"warn: '{package_config}' is not symlink. Skip..")
        return False

    return True


def install_with_pacman(package: str, package_dotenv: Path, force: bool):
    if package in SUCKLESS_PACKAGES:
        command = ["makepkg", "-s", "-i"]
        if force:
            command += ["-f"]

        print(f" -- [{package}] Installing via makepkg..")
        subprocess.run(command, cwd=package_dotenv, check=True)
        print(f" -- [{package}] Done")
    else:
        command = ["sudo", "pacman", "-S"]
        if package == "nvim":
            command += ["neovim", "lua51", "luarocks"]
        else:
            command += [package]

        print(f" -- [{package}] Installing via pacman..")
        subprocess.run(command, check=True)
        print(f" -- [{package}] Done")


def remove_with_pacman(package: str):
    command = ["sudo", "pacman" "-R", "-n", "-s"]
    if package in SUCKLESS_PACKAGES:
        command += [f"{package}-nteditor"]
    elif package == "nvim":
        command += ["neovim", "lua51", "luarocks"]
    else:
        command += [package]

    print(f" -- [{package}] Removing via pacman..")
    subprocess.run(command, check=True)
    print(f" -- [{package}] Done")


def install_dotenv_symlink(package: str, package_dotenv: Path, package_config: Path):
    if package in SUCKLESS_PACKAGES:
        return

    print(f" -- [{package}] Installing symlink..", end=" ")
    os.symlink(src=package_dotenv, dst=package_config, target_is_directory=True)
    print("Done")


def remove_dotenv_symlink(package: str, package_config: Path):
    if package in SUCKLESS_PACKAGES:
        return

    print(f" -- [{package}] Removing symlink..", end=" ")
    package_config.unlink()
    print("Done")


if __name__ == "__main__":
    main()
