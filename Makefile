.PHONY: increment

####### CONSTANTS #######
FILE = number.txt

####### TARGETS #######
increment:
	@if [ -f "$(FILE)" ]; then \
		NUMBER=$$(cat "$(FILE)"); \
		if [ "$$NUMBER" -eq "$$NUMBER" ] 2>/dev/null; then \
			NEW_NUMBER=$$((NUMBER + 1)); \
		else \
			NEW_NUMBER=1; \
		fi; \
	else \
		NEW_NUMBER=1; \
	fi; \
	echo $$NEW_NUMBER > "$(FILE)"; \
	echo $$NEW_NUMBER
