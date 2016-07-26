import common
import edify_generator
import os

def InstallBased(info):
    for filename in os.listdir("firmware"):
        if not (filename.find('.img')==-1 and filename.find('.bin')==-1 ):
            data=open(os.path.join(os.getcwd(),"firmware",filename)).read()
            common.ZipWriteStr(info.output_zip, filename, data)
    extra_img_flash = """ui_print("update firmware image...");
show_mtupdate_stage("/cache/recovery/last_mtupdate_stage");
ifelse (
less_than_int(get_mtupdate_stage("/cache/recovery/last_mtupdate_stage"), "1") ,
(
ui_print("start to update general image");
assert(package_extract_file("md1dsp.img", "/tmp/md1dsp.img"),
       write_raw_image("/tmp/md1dsp.img", "md1dsp"),
       delete("/tmp/md1dsp.img"));
assert(package_extract_file("md1arm7.img", "/tmp/md1arm7.img"),
       write_raw_image("/tmp/md1arm7.img", "md1arm7"),
       delete("/tmp/md1arm7.img"));
assert(package_extract_file("md1rom.img", "/tmp/md1img.img"),
       write_raw_image("/tmp/md1img.img", "md1img"),
       delete("/tmp/md1img.img"));
assert(package_extract_file("md3rom.img", "/tmp/md3img.img"),
       write_raw_image("/tmp/md3img.img", "md3img"),
       delete("/tmp/md3img.img"));
set_mtupdate_stage("/cache/recovery/last_mtupdate_stage", "1");
),
ui_print("general images are already updated");
);
ifelse (
less_than_int(get_mtupdate_stage("/cache/recovery/last_mtupdate_stage"), "3") ,
(
if less_than_int(get_mtupdate_stage("/cache/recovery/last_mtupdate_stage"), "2") then

ui_print("start to update alt loader image");
assert(package_extract_file("lk.bin", "/tmp/lk2.img"),
       write_raw_image("/tmp/lk2.img", "lk2"),
       delete("/tmp/lk2.img"));
assert(package_extract_file("trustzone.bin", "/tmp/tee2.img"),
       write_raw_image("/tmp/tee2.img", "tee2"),
       delete("/tmp/tee2.img"));
assert(package_extract_file("preloader_znj6750_66c_l.bin", "/tmp/preloader2.img"),
       write_raw_image("/tmp/preloader2.img", "preloader2"),
       delete("/tmp/preloader2.img"));
set_mtupdate_stage("/cache/recovery/last_mtupdate_stage", "2");
endif;

switch_active("lk", "lk2");
switch_active("tee1", "tee2");
switch_active("preloader", "preloader2");
set_mtupdate_stage("/cache/recovery/last_mtupdate_stage", "3");
),
ui_print("alt loder images are already updated");
);
ifelse (
less_than_int(get_mtupdate_stage("/cache/recovery/last_mtupdate_stage"), "5") ,
(
if less_than_int(get_mtupdate_stage("/cache/recovery/last_mtupdate_stage"), "4") then

ui_print("start to update main loader image");
assert(package_extract_file("lk.bin", "/tmp/lk.img"),
       write_raw_image("/tmp/lk.img", "lk"),
       delete("/tmp/lk.img"));
assert(package_extract_file("trustzone.bin", "/tmp/tee1.img"),
       write_raw_image("/tmp/tee1.img", "tee1"),
       delete("/tmp/tee1.img"));
assert(package_extract_file("preloader_znj6750_66c_l.bin", "/tmp/preloader.img"),
       write_raw_image("/tmp/preloader.img", "preloader"),
       delete("/tmp/preloader.img"));
set_mtupdate_stage("/cache/recovery/last_mtupdate_stage", "4");
endif;

switch_active("lk2", "lk");
switch_active("tee2", "tee1");
switch_active("preloader2", "preloader");
),
ui_print("main loader images are already updated");
);
delete("/cache/recovery/last_mtupdate_stage");"""
    info.script.AppendExtra(extra_img_flash);

def FullOTA_InstallEnd(info):
    InstallBased(info)

