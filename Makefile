.PHONY: release clean
release:
	bash scripts/release.sh
clean:
	rm -f release/*.pdf
