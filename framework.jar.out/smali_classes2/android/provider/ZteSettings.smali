.class public final Landroid/provider/ZteSettings;
.super Ljava/lang/Object;
.source "ZteSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/ZteSettings$Value;,
        Landroid/provider/ZteSettings$Config;,
        Landroid/provider/ZteSettings$VoiceSwitch;,
        Landroid/provider/ZteSettings$ColorTemperatureMode;,
        Landroid/provider/ZteSettings$ScreenEffectMode;,
        Landroid/provider/ZteSettings$GloveMode;,
        Landroid/provider/ZteSettings$Global;,
        Landroid/provider/ZteSettings$Secure;,
        Landroid/provider/ZteSettings$System;
    }
.end annotation


# static fields
.field public static final ACTION_RINGER_CHANGED:Ljava/lang/String; = "cn.com.zte.settings.RINGER_CHANGED"

.field public static final ACTION_SETTINGS_CHANGING:Ljava/lang/String; = "cn.com.zte.settings.SETTINGS_CHANGING"

.field public static final ACTION_VOICEASSISTANT_INIT_READY:Ljava/lang/String; = "VOICEASSISTANT_INIT_READY"

.field public static final ACTION_VOICE_SENSE_ENABLED:Ljava/lang/String; = "VOICE_SENSE_ENABLED"

.field public static final CONFIG_03:I = 0x3

.field public static final CONFIG_04:I = 0x4

.field public static final CONFIG_05:I = 0x5

.field public static final CONFIG_06:I = 0x6

.field public static final CONFIG_36:I = 0x24

.field public static final CONFIG_37:I = 0x25

.field public static final CONFIG_38:I = 0x26

.field public static final CONFIG_44:I = 0x2c

.field public static final CONFIG_45:I = 0x2d

.field public static final CONFIG_46:I = 0x2e

.field public static final CONFIG_BATTERY:I = 0x1e

.field public static final CONFIG_CONNECT_PC:I = 0x29

.field public static final CONFIG_DEBUG:I = 0x2

.field private static final CONFIG_DEFAULT:Ljava/lang/String; = "1000000.0000000.0000010.0000010.0000000.0s00000"

.field public static final CONFIG_DOLBY:I = 0x2a

.field public static final CONFIG_GLOVE_MODE:I = 0x8

.field public static final CONFIG_GUEST_MODE:I = 0x23

.field public static final CONFIG_HOME_SELECTOR:I = 0x18

.field public static final CONFIG_IMMERSION_VIBRATE:I = 0x1c

.field public static final CONFIG_INPUT_METHOD:I = 0x28

.field public static final CONFIG_IS_ROM:I = 0x0

.field public static final CONFIG_KIDS_MODE:I = 0x19

.field private static final CONFIG_MF30:Ljava/lang/String; = "0000000.0000000.0001010.0000011.0000000.0f00000"

.field public static final CONFIG_MI_POP:I = 0x1a

.field public static final CONFIG_NETWORK_MODE_TYPE:I = 0x15

.field public static final CONFIG_NOTIFICATION_PULSE:I = 0x1d

.field public static final CONFIG_ONE_HAND:I = 0x12

.field private static final CONFIG_P897A20:Ljava/lang/String; = "1000000.1001100.0001110.0001011.0000000.0f21000"

.field private static final CONFIG_P897S10:Ljava/lang/String; = "0000000.1001100.0101100.0003011.1000000.0f21000"

.field private static final CONFIG_P897S11:Ljava/lang/String; = "0000000.0001100.0101100.0002001.0000000.0f01000"

.field private static final CONFIG_P897S15:Ljava/lang/String; = "0000000.0001100.0101100.0002001.0000000.af00000"

.field private static final CONFIG_P897S20:Ljava/lang/String; = "0000000.1001100.0101100.0003111.0000000.0f01000"

.field private static final CONFIG_P898S10:Ljava/lang/String; = "1000000.0001100.0101110.0001011.0000000.0f11000"

.field public static final CONFIG_PPPOE:I = 0xb

.field public static final CONFIG_PRINT:I = 0x13

.field public static final CONFIG_PROFILES:I = 0xe

.field private static final CONFIG_PROP:Ljava/lang/String; = "persist.sys.settings.config"

.field public static final CONFIG_QUICKSTART:I = 0x11

.field public static final CONFIG_SCREEN_EFFECT:I = 0x9

.field public static final CONFIG_SCREEN_WAKEUP:I = 0x10

.field public static final CONFIG_SILENT_POWERON:I = 0xa

.field public static final CONFIG_SKY_DOMAIN:I = 0x21

.field public static final CONFIG_SKY_EYE:I = 0x22

.field public static final CONFIG_SKY_LOCK:I = 0x20

.field public static final CONFIG_SOUND_UNLOCK:I = 0xd

.field public static final CONFIG_UPLMN_ENABLED:I = 0x16

.field public static final CONFIG_VERSION_TYPE:I = 0x1

.field public static final CONFIG_VOICE_ASSISTANT:I = 0xc

.field public static final CONFIG_WIFI:I = 0x1b

.field public static final CONFIG_WIFI_OPTIONAL:I = 0x2b

.field public static final CONFIG_ZGESTURE:I = 0x14

.field private static final DEF_VAL:Ljava/lang/String; = "0"

.field private static final DEF_VAL_SET:Ljava/lang/String; = "0,1"

.field public static final EXTRA_KEY:Ljava/lang/String; = "key"

.field public static final EXTRA_VAL:Ljava/lang/String; = "val"

.field public static final NOTIFICATION_RINGTONE:Ljava/lang/String; = "pref_key_ringtone"

.field private static final PRJ_CONFIG_DIR:Ljava/lang/String; = "/system/etc"

.field public static final PROP_IMMERSION_VIBRATE:Ljava/lang/String; = "persist.sys.immersion_vibrate"

.field private static final TAG:Ljava/lang/String; = "zte_settings"

.field private static final UPDATE_CONFIG_DIR:Ljava/lang/String; = "docs/config"

.field private static final VAL_SEP:Ljava/lang/String; = ","

.field private static final mAllowUndefined:Z

.field private static mArbitCfg:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mConfig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mDefVal:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mFilenameFilter:Ljava/io/FilenameFilter;

.field private static mMultipleCfg:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mPrj2Cfg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mProxyCfg:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSingleCfg:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSwitchCfg:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mValSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 511
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    .line 512
    sget-object v1, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v2, "P897A20"

    const-string v3, "1000000.1001100.0001110.0001011.0000000.0f21000"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    sget-object v1, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v2, "ZTE Grand S II LTE"

    const-string v3, "1000000.1001100.0001110.0001011.0000000.0f21000"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    sget-object v1, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v2, "P898S10"

    const-string v3, "1000000.0001100.0101110.0001011.0000000.0f11000"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    sget-object v1, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v2, "ZTE STAR"

    const-string v3, "1000000.0001100.0101110.0001011.0000000.0f11000"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v1, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v2, "MF30"

    const-string v3, "0000000.0000000.0001010.0000011.0000000.0f00000"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-object v1, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v2, "MiFavor V3"

    const-string v3, "0000000.0000000.0001010.0000011.0000000.0f00000"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    sget-object v1, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v2, "P897S11"

    const-string v3, "0000000.0001100.0101100.0002001.0000000.0f01000"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    sget-object v1, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v2, "ZTE S2005"

    const-string v3, "0000000.0001100.0101100.0002001.0000000.0f01000"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    sget-object v1, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v2, "P897S10"

    const-string v3, "0000000.1001100.0101100.0003011.1000000.0f21000"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-object v1, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v2, "ZTE S2004"

    const-string v3, "0000000.1001100.0101100.0003011.1000000.0f21000"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    sget-object v1, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v2, "P897S20"

    const-string v3, "0000000.1001100.0101100.0003111.0000000.0f01000"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    sget-object v1, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v2, "P897S15"

    const-string v3, "0000000.0001100.0101100.0002001.0000000.af00000"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    sget-object v1, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v2, "ZTE S2007"

    const-string v3, "0000000.0001100.0101100.0002001.0000000.af00000"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/provider/ZteSettings;->mConfig:Ljava/util/HashMap;

    .line 656
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/provider/ZteSettings;->mDefVal:Ljava/util/HashMap;

    .line 657
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/provider/ZteSettings;->mValSet:Ljava/util/HashMap;

    .line 658
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Landroid/provider/ZteSettings;->mSwitchCfg:Ljava/util/HashSet;

    .line 659
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Landroid/provider/ZteSettings;->mSingleCfg:Ljava/util/HashSet;

    .line 660
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Landroid/provider/ZteSettings;->mMultipleCfg:Ljava/util/HashSet;

    .line 661
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Landroid/provider/ZteSettings;->mArbitCfg:Ljava/util/HashSet;

    .line 662
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Landroid/provider/ZteSettings;->mProxyCfg:Ljava/util/HashSet;

    .line 669
    new-instance v1, Landroid/provider/ZteSettings$1;

    invoke-direct {v1}, Landroid/provider/ZteSettings$1;-><init>()V

    sput-object v1, Landroid/provider/ZteSettings;->mFilenameFilter:Ljava/io/FilenameFilter;

    .line 726
    const-string v1, "cast_screen"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/provider/ZteSettings;->addSwitchConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string v1, "gesture_motion"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/provider/ZteSettings;->addSwitchConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string v1, "glove_mode"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/provider/ZteSettings;->addSwitchConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const-string v1, "hard_key"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/provider/ZteSettings;->addSwitchConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const-string v1, "mi_pop"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/provider/ZteSettings;->addSwitchConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const-string v1, "nfc_multi_se"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/provider/ZteSettings;->addSwitchConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const-string v1, "notification_pulse"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/provider/ZteSettings;->addSwitchConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-string v1, "voice_assistant"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/provider/ZteSettings;->addSwitchConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const-string v1, "battery"

    const-string v2, "zte"

    const-string v3, "android,zte"

    invoke-static {v1, v2, v3}, Landroid/provider/ZteSettings;->addSingleConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v1, "connect_pc"

    const-string v2, "full"

    const-string v3, "full,lite"

    invoke-static {v1, v2, v3}, Landroid/provider/ZteSettings;->addSingleConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v1, "network_mode"

    const-string v2, "x"

    const-string v3, "x,y,z"

    invoke-static {v1, v2, v3}, Landroid/provider/ZteSettings;->addSingleConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v1, "move_apps"

    const-string v2, "innerSD"

    const-string v3, "none,innerSD,externalSD"

    invoke-static {v1, v2, v3}, Landroid/provider/ZteSettings;->addSingleConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-string v1, "wifi_version"

    const-string v2, "rom"

    const-string v3, "rom,online,cmcc,us,other"

    invoke-static {v1, v2, v3}, Landroid/provider/ZteSettings;->addSingleConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string v1, "default_ime"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/provider/ZteSettings;->addArbitraryConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v1, "version_type"

    invoke-static {v1}, Landroid/provider/ZteSettings;->addProxyConfig(Ljava/lang/String;)V

    .line 746
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/provider/ZteSettings;->mFilenameFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 747
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 748
    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    invoke-static {v1}, Landroid/provider/ZteSettings;->loadConfig(Ljava/io/File;)V

    .line 750
    :cond_0
    return-void

    .line 748
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    return-void
.end method

.method private static addArbitraryConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "cfg"    # Ljava/lang/String;
    .param p1, "defVal"    # Ljava/lang/String;

    .prologue
    .line 770
    sget-object v0, Landroid/provider/ZteSettings;->mDefVal:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    sget-object v0, Landroid/provider/ZteSettings;->mArbitCfg:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 772
    return-void
.end method

.method private static addMultipleConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "cfg"    # Ljava/lang/String;
    .param p1, "defVal"    # Ljava/lang/String;
    .param p2, "valSet"    # Ljava/lang/String;

    .prologue
    .line 764
    sget-object v0, Landroid/provider/ZteSettings;->mDefVal:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    sget-object v0, Landroid/provider/ZteSettings;->mValSet:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    sget-object v0, Landroid/provider/ZteSettings;->mMultipleCfg:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 767
    return-void
.end method

.method private static addProxyConfig(Ljava/lang/String;)V
    .locals 1
    .param p0, "cfg"    # Ljava/lang/String;

    .prologue
    .line 775
    sget-object v0, Landroid/provider/ZteSettings;->mProxyCfg:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 776
    return-void
.end method

.method private static addSingleConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "cfg"    # Ljava/lang/String;
    .param p1, "defVal"    # Ljava/lang/String;
    .param p2, "valSet"    # Ljava/lang/String;

    .prologue
    .line 757
    sget-object v0, Landroid/provider/ZteSettings;->mDefVal:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    sget-object v0, Landroid/provider/ZteSettings;->mValSet:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    sget-object v0, Landroid/provider/ZteSettings;->mSingleCfg:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 760
    return-void
.end method

.method private static addSwitchConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "cfg"    # Ljava/lang/String;
    .param p1, "defVal"    # Ljava/lang/String;

    .prologue
    .line 753
    sget-object v0, Landroid/provider/ZteSettings;->mDefVal:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    return-void
.end method

.method private static extractValSet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "tip"    # Ljava/lang/String;

    .prologue
    .line 820
    const/4 v1, 0x0

    .line 821
    .local v1, "start":I
    const/4 v0, 0x0

    .line 823
    .local v0, "end":I
    const-string v3, "["

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 824
    const-string v3, "]"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 832
    :goto_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 833
    .local v2, "valSet":Ljava/lang/String;
    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 834
    sget-object v3, Landroid/provider/ZteSettings;->mArbitCfg:Ljava/util/HashSet;

    invoke-virtual {v3, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 838
    :goto_1
    sget-object v3, Landroid/provider/ZteSettings;->mValSet:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    .end local v2    # "valSet":Ljava/lang/String;
    :goto_2
    return-object v2

    .line 825
    :cond_0
    const-string v3, "{"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 826
    const-string v3, "}"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 827
    sget-object v3, Landroid/provider/ZteSettings;->mMultipleCfg:Ljava/util/HashSet;

    invoke-virtual {v3, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 829
    :cond_1
    const-string v2, ""

    goto :goto_2

    .line 836
    .restart local v2    # "valSet":Ljava/lang/String;
    :cond_2
    sget-object v3, Landroid/provider/ZteSettings;->mSingleCfg:Ljava/util/HashSet;

    invoke-virtual {v3, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private static getAllConfigs()Ljava/lang/String;
    .locals 5

    .prologue
    .line 634
    const-string v3, "ro.product.name"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 635
    .local v1, "name":Ljava/lang/String;
    const-string v3, "ro.product.model"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "model":Ljava/lang/String;
    const-string v3, "persist.sys.settings.config"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 638
    .local v2, "prop":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "1000000.0000000.0000010.0000010.0000000.0s00000"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_1

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_1

    .line 648
    .end local v2    # "prop":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 641
    .restart local v2    # "prop":Ljava/lang/String;
    :cond_1
    sget-object v3, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 642
    sget-object v3, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    goto :goto_0

    .line 643
    :cond_2
    sget-object v3, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 644
    sget-object v3, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    goto :goto_0

    .line 645
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 648
    const-string v2, "1000000.0000000.0000010.0000010.0000000.0s00000"

    goto :goto_0
.end method

.method public static getConfig(I)C
    .locals 3
    .param p0, "pos"    # I

    .prologue
    .line 547
    invoke-static {}, Landroid/provider/ZteSettings;->getAllConfigs()Ljava/lang/String;

    move-result-object v0

    .line 549
    .local v0, "cfgs":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne p0, v2, :cond_2

    .line 550
    const-string v2, "ro.product.versiontype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 551
    .local v1, "verType":Ljava/lang/String;
    const-string v2, "NETWORK_VER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 552
    const/16 v2, 0x31

    .line 561
    .end local v1    # "verType":Ljava/lang/String;
    :goto_0
    return v2

    .line 553
    .restart local v1    # "verType":Ljava/lang/String;
    :cond_0
    const-string v2, "CMCC_TEST_VER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 554
    const/16 v2, 0x32

    goto :goto_0

    .line 556
    :cond_1
    const/16 v2, 0x30

    goto :goto_0

    .line 558
    .end local v1    # "verType":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p0, v2, :cond_3

    .line 559
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    .line 561
    :cond_3
    const/16 v2, 0x20

    goto :goto_0
.end method

.method public static getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 591
    sget-object v0, Landroid/provider/ZteSettings;->mProxyCfg:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    invoke-static {p0}, Landroid/provider/ZteSettings;->getProxyConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 595
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/ZteSettings;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private static getDefVal(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 912
    sget-object v0, Landroid/provider/ZteSettings;->mDefVal:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    sget-object v0, Landroid/provider/ZteSettings;->mDefVal:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 916
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private static getProxyConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cfg"    # Ljava/lang/String;

    .prologue
    .line 779
    sget-object v0, Landroid/provider/ZteSettings;->mProxyCfg:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 780
    const/4 v0, 0x0

    .line 787
    :goto_0
    return-object v0

    .line 783
    :cond_0
    const-string v0, "version_type"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 784
    const-string v0, "ro.product.versiontype"

    const-string v1, "UNSET"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 787
    :cond_1
    const-string v0, "no_handler"

    goto :goto_0
.end method

.method private static getTip(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 920
    sget-object v0, Landroid/provider/ZteSettings;->mArbitCfg:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/ZteSettings;->mProxyCfg:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 921
    :cond_0
    const-string v0, "[*]"

    .line 932
    :goto_0
    return-object v0

    .line 924
    :cond_1
    sget-object v0, Landroid/provider/ZteSettings;->mValSet:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 925
    sget-object v0, Landroid/provider/ZteSettings;->mMultipleCfg:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Landroid/provider/ZteSettings;->mValSet:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 929
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Landroid/provider/ZteSettings;->mValSet:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 932
    :cond_3
    const-string v0, "[0,1]"

    goto :goto_0
.end method

.method private static getValidValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 936
    const-string v0, "0,1"

    .line 937
    .local v0, "vvs":Ljava/lang/String;
    sget-object v1, Landroid/provider/ZteSettings;->mValSet:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 938
    sget-object v1, Landroid/provider/ZteSettings;->mValSet:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "vvs":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 941
    .restart local v0    # "vvs":Ljava/lang/String;
    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static initDefaultConfig()V
    .locals 11

    .prologue
    .line 896
    const-class v2, Landroid/provider/ZteSettings$Config;

    .line 897
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/provider/ZteSettings$Config;>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 898
    .local v5, "fds":[Ljava/lang/reflect/Field;
    move-object v1, v5

    .local v1, "arr$":[Ljava/lang/reflect/Field;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v4, v1, v6

    .line 899
    .local v4, "fd":Ljava/lang/reflect/Field;
    const/4 v7, 0x0

    .line 901
    .local v7, "key":Ljava/lang/String;
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/String;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    :goto_1
    invoke-static {v7}, Landroid/provider/ZteSettings;->getDefVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 907
    .local v9, "val":Ljava/lang/String;
    sget-object v10, Landroid/provider/ZteSettings;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v10, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 902
    .end local v9    # "val":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 903
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 909
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "fd":Ljava/lang/reflect/Field;
    .end local v7    # "key":Ljava/lang/String;
    :cond_0
    return-void

    .line 902
    .restart local v4    # "fd":Ljava/lang/reflect/Field;
    .restart local v7    # "key":Ljava/lang/String;
    :catch_1
    move-exception v3

    goto :goto_2
.end method

.method public static isConfiged(I)Z
    .locals 4
    .param p0, "pos"    # I

    .prologue
    const/4 v1, 0x0

    .line 534
    invoke-static {}, Landroid/provider/ZteSettings;->getAllConfigs()Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, "cfgs":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p0, v2, :cond_0

    .line 537
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    invoke-static {p0}, Landroid/provider/ZteSettings;->isSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 539
    :cond_0
    return v1
.end method

.method public static isConfiged(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 566
    sget-object v0, Landroid/provider/ZteSettings;->mProxyCfg:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    const-string v0, "1"

    invoke-static {p0}, Landroid/provider/ZteSettings;->getProxyConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 574
    :goto_0
    return v0

    .line 570
    :cond_0
    invoke-static {p0}, Landroid/provider/ZteSettings;->isDependentExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 571
    const/4 v0, 0x0

    goto :goto_0

    .line 574
    :cond_1
    const-string v0, "1"

    sget-object v1, Landroid/provider/ZteSettings;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isConfiged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "values"    # Ljava/lang/String;

    .prologue
    .line 578
    sget-object v4, Landroid/provider/ZteSettings;->mProxyCfg:Ljava/util/HashSet;

    invoke-virtual {v4, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 579
    invoke-static {p0}, Landroid/provider/ZteSettings;->getProxyConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 587
    :goto_0
    return v4

    .line 582
    :cond_0
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 583
    .local v3, "val":Ljava/lang/String;
    invoke-static {p0, v3}, Landroid/provider/ZteSettings;->isConfigedIt(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 584
    const/4 v4, 0x0

    goto :goto_0

    .line 582
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 587
    .end local v3    # "val":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private static isConfigedIt(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 599
    sget-object v4, Landroid/provider/ZteSettings;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    .line 609
    :goto_0
    return v4

    .line 603
    :cond_0
    sget-object v4, Landroid/provider/ZteSettings;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 604
    .local v3, "v":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 605
    const/4 v4, 0x1

    goto :goto_0

    .line 603
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "v":Ljava/lang/String;
    :cond_2
    move v4, v5

    .line 609
    goto :goto_0
.end method

.method private static isDependentExist(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 613
    const-string v0, "hard_key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    const-string v0, "persist.sys.keyboard.layout"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    const/4 v0, 0x0

    .line 619
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isSupported(I)Z
    .locals 1
    .param p0, "pos"    # I

    .prologue
    .line 623
    packed-switch p0, :pswitch_data_0

    .line 629
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 625
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 623
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method private static isValidValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 945
    sget-object v6, Landroid/provider/ZteSettings;->mArbitCfg:Ljava/util/HashSet;

    invoke-virtual {v6, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Landroid/provider/ZteSettings;->mProxyCfg:Ljava/util/HashSet;

    invoke-virtual {v6, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 955
    :cond_0
    :goto_0
    return v5

    .line 949
    :cond_1
    invoke-static {p0}, Landroid/provider/ZteSettings;->getValidValues(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 950
    .local v4, "vvs":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 951
    .local v3, "vv":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 950
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 955
    .end local v3    # "vv":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static loadConfig(Ljava/io/File;)V
    .locals 1
    .param p0, "confFile"    # Ljava/io/File;

    .prologue
    .line 803
    sget-object v0, Landroid/provider/ZteSettings;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 804
    invoke-static {}, Landroid/provider/ZteSettings;->initDefaultConfig()V

    .line 805
    invoke-static {p0}, Landroid/provider/ZteSettings;->readFile(Ljava/io/File;)V

    .line 806
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 791
    new-instance v5, Ljava/io/File;

    const-string v6, "docs/config"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/provider/ZteSettings;->mFilenameFilter:Ljava/io/FilenameFilter;

    invoke-virtual {v5, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 793
    .local v2, "files":[Ljava/io/File;
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 794
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Landroid/provider/ZteSettings;->loadConfig(Ljava/io/File;)V

    .line 795
    invoke-static {v1}, Landroid/provider/ZteSettings;->updateConfigFile(Ljava/io/File;)V

    .line 796
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CONFIG:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/provider/ZteSettings;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 797
    invoke-static {}, Landroid/provider/ZteSettings;->test()V

    .line 793
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 800
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private static readFile(Ljava/io/File;)V
    .locals 9
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 844
    if-nez p0, :cond_0

    .line 893
    :goto_0
    return-void

    .line 849
    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v7, 0x400

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    .local v4, "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 854
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 855
    const-string v6, "=|;"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 856
    .local v2, "kv":[Ljava/lang/String;
    const-string v6, "#"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    array-length v6, v2

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    .line 860
    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 861
    .local v1, "key":Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 863
    .local v5, "val":Ljava/lang/String;
    sget-object v6, Landroid/provider/ZteSettings;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 864
    invoke-static {v1, v5}, Landroid/provider/ZteSettings;->isValidValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 865
    sget-object v6, Landroid/provider/ZteSettings;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v6, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 886
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "kv":[Ljava/lang/String;
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "val":Ljava/lang/String;
    :catchall_0
    move-exception v6

    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 888
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 889
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "zte_settings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can\'t open file for read:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const-string v6, "zte_settings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 867
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "kv":[Ljava/lang/String;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "val":Ljava/lang/String;
    :cond_2
    :try_start_3
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid value:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 881
    :cond_3
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Undefined config:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 886
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "kv":[Ljava/lang/String;
    .end local v5    # "val":Ljava/lang/String;
    :cond_4
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method

.method private static test()V
    .locals 4

    .prologue
    .line 809
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Test:isConfiged(CFG_MI_POP)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mi_pop"

    invoke-static {v2}, Landroid/provider/ZteSettings;->isConfiged(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 811
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Test:isConfiged(CFG_CONNECT_PC,\"full\")="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "connect_pc"

    const-string v3, "full"

    invoke-static {v2, v3}, Landroid/provider/ZteSettings;->isConfiged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 814
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Test:isConfiged(CFG_CONNECT_PC,\"lite\")="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "connect_pc"

    const-string v3, "lite"

    invoke-static {v2, v3}, Landroid/provider/ZteSettings;->isConfiged(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 817
    return-void
.end method

.method private static updateConfigFile(Ljava/io/File;)V
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 960
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    .local v3, "writer":Ljava/io/FileWriter;
    :try_start_1
    const-string v4, "#Four type:switch,single choice,multiple choice,arbitrary:\n"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 963
    const-string v4, "#key=0; #[0,1]\n"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 964
    const-string v4, "#key=value1; #[value1,value2,value3]\n"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 965
    const-string v4, "#key=value1,value3; #{value1,value2,value3}\n"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 966
    const-string v4, "#key=value; #[*]\n"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 967
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 968
    new-instance v4, Ljava/util/TreeSet;

    sget-object v5, Landroid/provider/ZteSettings;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 969
    .local v2, "key":Ljava/lang/String;
    sget-object v4, Landroid/provider/ZteSettings;->mProxyCfg:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 972
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v4, Landroid/provider/ZteSettings;->mConfig:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/provider/ZteSettings;->getTip(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 977
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V

    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 979
    .end local v3    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 980
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "zte_settings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t open for write:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const-string v4, "zte_settings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 975
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "writer":Ljava/io/FileWriter;
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 977
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method
