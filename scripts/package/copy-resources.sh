#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "${0}")/../.."
APP_ROOT=$(pwd)

function main() {
	cd ${APP_ROOT}
	mkdir -p dist
	if [ "${DEV_VSCODE-}" ];
	then
		cp resources/index-dev-vscode.html dist/index.html
	else
		cp resources/index.html dist/index.html
	fi
	cp resources/*.ico dist
	cp resources/manifest.json dist

	echo "copy resources done!"
}

main "$@"
