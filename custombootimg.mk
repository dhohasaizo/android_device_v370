$(INSTALLED_RECOVERYIMAGE_TARGET): $(MKBOOTIMG) \
		$(recovery_ramdisk)
	@echo ----- Making recovery image ------
	perl device/acer/v370/repack-MT65xx.pl -recovery device/acer/v370/kernel out/target/product/v370/recovery/root $@ $(MKBOOTIMG)
	@echo ----- Made recovery image -------- $@
	$(hide) $(call assert-max-image-size,$@,$(BOARD_RECOVERYIMAGE_PARTITION_SIZE),raw)


$(INSTALLED_BOOTIMAGE_TARGET): $(MKBOOTIMG) $(INTERNAL_BOOTIMAGE_FILES)
	$(call pretty,"Target boot image: $@")
	perl device/acer/v370/repack-MT65xx.pl -boot device/acer/v370/kernel out/target/product/v370/root $@ $(MKBOOTIMG)
	$(hide) $(call assert-max-image-size,$@,$(BOARD_BOOTIMAGE_PARTITION_SIZE),raw)
