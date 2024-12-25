{
  lib,
  buildGoModule,
  fetchFromGitHub,
}:

buildGoModule rec {
  pname = "upcloud-cli";
  version = "3.13.0";
  tag = "refs/tags/v${version}";

  src = fetchFromGitHub {
    owner = "UpCloudLtd";
    repo = "upcloud-cli";
    rev = "5bd0752a71b00f436e4a1e5a1eb0d35c1dadff8d";
    hash = "sha256-0hXqqLqZLX9zkRk6/sOh3/w+v5piuAV1277Nk6w1i6s=";
  };

  vendorHash = "sha256-Sl9D8PyqWfTBrPsVxJtLmU3Qxe5f3kpwd5Oi+5YZ4oo=";

  meta = {
    changelog = "https://github.com/UpCloudLtd/upcloud-cli/blob/${tag}/CHANGELOG.md";
    description = "Command-line tool for managing UpCloud services";
    homepage = "https://github.com/UpCloudLtd/upcloud-cli";
    license = lib.licenses.mit;
    maintainers = with lib.maintainers; [ lu1a ];
  };
}
