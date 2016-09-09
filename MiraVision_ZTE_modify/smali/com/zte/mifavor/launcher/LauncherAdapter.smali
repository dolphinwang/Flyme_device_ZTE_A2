.class public abstract Lcom/zte/mifavor/launcher/LauncherAdapter;
.super Ljava/lang/Object;
.source "LauncherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/launcher/LauncherAdapter$IChangeCallback;,
        Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;
    }
.end annotation


# static fields
.field public static final ACTION_APPS_UNINTALL_FAILED:Ljava/lang/String; = "com.zte.mifavorlauncher.support.UNINSTALL_FAIL"

.field public static final ACTION_COLOR_CHANGED:Ljava/lang/String; = "com.zte.mifavorlauncher.support.COLOR_CHANGED"

.field public static final ACTION_COLOR_SETTED:Ljava/lang/String; = "com.zte.mifavorlauncher.support.COLOR_SETTED"

.field public static final ACTION_SET_SB_COLOR:Ljava/lang/String; = "com.zte.mifavorlauncher.support.SET_SB_COLOR"

.field public static final ACTION_WALLPAPER_CHANGED:Ljava/lang/String; = "com.zte.mifavorlauncher.support.WALLPAPER_CHANGED"

.field public static final ACTION_WIDGET_LONG_CLICK_ACTION:Ljava/lang/String; = "com.zte.mifavorlauncher.support.WIDGET_LONG_CLICK"

.field public static final ACTION_WIDGET_SETTING_CHANGED:Ljava/lang/String; = "com.zte.mifavorlauncher.support.WIDGET_SETTING_CHANGED"

.field public static final TAG_ACTION:Ljava/lang/String; = "action"

.field public static final TAG_ACTION_COLOR_CHANGED:Ljava/lang/String; = "COLOR_CHANGED"

.field public static final TAG_BGCOLOR:Ljava/lang/String; = "bgColor"

.field public static final TAG_COLOR_BB:Ljava/lang/String; = "Color6"

.field public static final TAG_COLOR_CB:Ljava/lang/String; = "Color3"

.field public static final TAG_COLOR_CC:Ljava/lang/String; = "Color2"

.field public static final TAG_COLOR_CI:Ljava/lang/String; = "Color4"

.field public static final TAG_COLOR_HT:Ljava/lang/String; = "foreColor"

.field public static final TAG_COLOR_MB:Ljava/lang/String; = "Color5"

.field public static final TAG_COLOR_SB:Ljava/lang/String; = "Color7"

.field public static final TAG_COLOR_SI:Ljava/lang/String; = "Color8"

.field public static final TAG_FAILED_LIST:Ljava/lang/String; = "APPS"

.field public static final TAG_LONG_CLICK_WIDGET_ID:Ljava/lang/String; = "widgetId"

.field public static final TAG_SB_BGCOLOR:Ljava/lang/String; = "bgColor"

.field public static final TAG_SB_FORECOLOR:Ljava/lang/String; = "foreColor"

.field public static final TAG_SETTING_WIDGET_ID:Ljava/lang/String; = "widgetId"

.field public static final TAG_SET_BTN_COLOR:Ljava/lang/String; = "btnColor"

.field public static final TAG_SET_COLOR:Ljava/lang/String; = "myColor"

.field public static final TAG_SET_FORECOLOR:Ljava/lang/String; = "foreColor"

.field public static final TAG_WALLPAPER_BGCOLOR:Ljava/lang/String; = "bgColor"

.field public static final TAG_WALLPAPER_TEXTCOLOR:Ljava/lang/String; = "foreColor"

.field public static final TAG_WIDGET_BGCOLOR:Ljava/lang/String; = "bgColor"

.field public static final TAG_WIDGET_BG_PROVIDER_NAME:Ljava/lang/String; = "providerName"

.field public static final TAG_WIDGET_PROVIDER_NAME:Ljava/lang/String; = "providerName"

.field private static mAdapter:Lcom/zte/mifavor/launcher/LauncherAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/mifavor/launcher/LauncherAdapter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    sget-object v0, Lcom/zte/mifavor/launcher/LauncherAdapter;->mAdapter:Lcom/zte/mifavor/launcher/LauncherAdapter;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/mifavor/launcher/LauncherAdapter;->mAdapter:Lcom/zte/mifavor/launcher/LauncherAdapter;

    .line 80
    :cond_0
    sget-object v0, Lcom/zte/mifavor/launcher/LauncherAdapter;->mAdapter:Lcom/zte/mifavor/launcher/LauncherAdapter;

    return-object v0
.end method


# virtual methods
.method public abstract colorChanged(IIIIIIIII)Z
.end method

.method public abstract getComponentName(Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;)Landroid/content/ComponentName;
.end method

.method public abstract getComponentName(Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;I)Landroid/content/ComponentName;
.end method

.method public abstract getCurLockWallpaper()Landroid/graphics/Bitmap;
.end method

.method public abstract getGalleryWallpaperIcon()Landroid/graphics/Bitmap;
.end method

.method public abstract getIncomeCount(Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;)I
.end method

.method public abstract getLiveWallpaperList()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isRunningInCtaVersion()Z
.end method

.method public abstract isSupportPrivateInterface()Z
.end method

.method public abstract registerMonitor(Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;Lcom/zte/mifavor/launcher/LauncherAdapter$IChangeCallback;)V
.end method

.method public abstract setCurLockWallpaper(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setGalleryWallpaperIcon(Landroid/graphics/Bitmap;)V
.end method

.method public abstract setLiveWallpaper(Ljava/lang/String;)Z
.end method

.method public abstract setStatusBarColor(II)V
.end method

.method public abstract uninstallApps(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unregisterMonitor(Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;Lcom/zte/mifavor/launcher/LauncherAdapter$IChangeCallback;)V
.end method

.method public abstract wallPaperChanged(II)Z
.end method

.method public abstract widgetBgChanged(IILjava/lang/String;)Z
.end method

.method public abstract widgetOnLongClickChanged(ILjava/lang/String;)Z
.end method
