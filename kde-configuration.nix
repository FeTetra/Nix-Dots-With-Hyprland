# kde-configuration.nix

# Modular Nix configuration for KDE Plasma 6

{inputs, config, pkgs, ... }:

{

  # Enable the X11 windowing system.
  # You can disable this if you're only using the Wayland session.
  services.xserver.enable = true;

  # Enable the KDE Plasma Desktop Environment.
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  environment.systemPackages = with pkgs; [
    kdePackages.kate
    kdePackages.qtwebengine
    #inputs.kwin-effects-forceblur.packages.${pkgs.system}.default

  ];

}
