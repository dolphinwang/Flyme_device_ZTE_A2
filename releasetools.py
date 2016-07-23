import common
import edify_generator
import os

def InstallBased(info):
    for filename in os.listdir("firmware"):
        if not (filename.find('.img')==-1 and filename.find('.bin')==-1 ):
            data=open(os.path.join(os.getcwd(),"firmware",filename)).read()
            common.ZipWriteStr(info.output_zip, filename, data)
    extra_img_flash = """ui_print("update firmware image...");
package_extract_file("logo.bin", "/dev/block/platform/mtk-msdc.0/by-name/logo");
package_extract_file("md1dsp.img", "/dev/block/platform/mtk-msdc.0/by-name/md1dsp");
package_extract_file("md1arm7.img", "/dev/block/platform/mtk-msdc.0/by-name/md1arm7");
package_extract_file("md1rom.img", "/dev/block/platform/mtk-msdc.0/by-name/md1img");
package_extract_file("md3rom.img", "/dev/block/platform/mtk-msdc.0/by-name/md3img");
package_extract_file("lk.bin", "/dev/blockplatform/mtk-msdc.0/by-name/lk2");
package_extract_file("lk.bin", "/dev/block/platform/mtk-msdc.0/by-name/lk");
package_extract_file("trustzone.bin", "/dev/block/platform/mtk-msdc.0/by-name/tee1");
package_extract_file("trustzone.bin", "/dev/block/platform/mtk-msdc.0/by-name/tee2");"""
    info.script.AppendExtra(extra_img_flash);

def FullOTA_InstallEnd(info):
    InstallBased(info)

