cask "pulseview" do
  version "0.4.2"
  sha256 "5a0f61a590d0866f7696d23d2da801d12ee33c97b24dc71f669dfb1250f341c5"

  url "https://sigrok.org/download/binary/pulseview/PulseView-#{version}.dmg"
  name "PulseView"
  desc "Qt based logic analyzer, oscilloscope and MSO GUI for sigrok"
  homepage "https://sigrok.org/wiki/PulseView/"

  livecheck do
    cask "pulseview"
  end

  auto_updates true
  depends_on macos: ">= :mavericks"

  app "Pulseview.app"

  uninstall quit: "org.sigrok.PulseView"

  zap trash: [
    "~/Library/Saved Application State/org.sigrok.PulseView.savedState",
    "~/Library/Preferences/Ableton",
    "~/Library/Preferences/org.sigrok.PulseView.plist*",
  ]
end
