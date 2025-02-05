cask "marathon2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "20221126"
  sha256 "fabf83d755b8c4b89177c809bd674074b96316ea9c06fc189ae271d6c0f60523"

  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/Marathon2-#{version}-Mac.dmg",
      verified: "github.com/Aleph-One-Marathon/alephone/"
  name "Marathon 2"
  desc "First-person shooter, second in a trilogy"
  homepage "https://alephone.lhowon.org/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Marathon2[._-]v?(\d+(?:\.\d+)*)[._-]Mac\.dmg}i)
  end

  app "Marathon 2.app"
end
