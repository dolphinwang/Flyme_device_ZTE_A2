.class public Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;
.super Lcom/zte/mifavor/launcher/LauncherAdapter;
.source "LauncherAdapterImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$CalendarInfo;,
        Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$CallInfo;,
        Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$EmailInfo;,
        Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$LiveWallpaperInfo;,
        Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$MessageMms;,
        Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$MessageSms;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$zte$mifavor$launcher$LauncherAdapter$PackageType:[I = null

.field private static final AUTHORITY:Ljava/lang/String; = "content://com.zte.mifavorlauncher.launchercontentprovider"

.field private static CLASS_NAME:[[Ljava/lang/String; = null

.field private static CLASS_NAME_MORE:[[Ljava/lang/String; = null

.field private static final CUR_WALLPAPER_FILE:Ljava/lang/String; = "content://com.zte.mifavorlauncher.launchercontentprovider/lockscreen.jpg"

.field public static final GALLERY_WALLPAPER_ICON:Ljava/lang/String; = "content://com.zte.mifavorlauncher.launchercontentprovider/galleryIcon.jpg"

.field private static PACKAGE_NAME:[[Ljava/lang/String; = null

.field private static final PRODUCT:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LauncherAdapterImpl"


# instance fields
.field private mCalendarObserver:Landroid/database/ContentObserver;

.field private mCallObserver:Landroid/database/ContentObserver;

.field private mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/zte/mifavor/launcher/LauncherAdapter$IChangeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEmailObserver:Landroid/database/ContentObserver;

.field private mPhoneTag:I

.field private mSmsObserver:Landroid/database/ContentObserver;

.field mWallpaperManager:Landroid/app/WallpaperManager;

.field mWallpapers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$LiveWallpaperInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$zte$mifavor$launcher$LauncherAdapter$PackageType()[I
    .locals 3

    .prologue
    .line 48
    sget-object v0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->$SWITCH_TABLE$com$zte$mifavor$launcher$LauncherAdapter$PackageType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;->values()[Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;->CALENDAR:Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;

    invoke-virtual {v1}, Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;->CALL:Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;

    invoke-virtual {v1}, Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;->CLOCK:Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;

    invoke-virtual {v1}, Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;->EMAIL:Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;

    invoke-virtual {v1}, Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;->MMS:Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;

    invoke-virtual {v1}, Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->$SWITCH_TABLE$com$zte$mifavor$launcher$LauncherAdapter$PackageType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 50
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->PRODUCT:Ljava/lang/String;

    .line 56
    new-array v0, v6, [[Ljava/lang/String;

    .line 58
    new-array v1, v7, [Ljava/lang/String;

    .line 59
    const-string v2, "com.android.mms"

    aput-object v2, v1, v4

    .line 60
    const-string v2, "com.android.contacts"

    aput-object v2, v1, v5

    .line 61
    const-string v2, "com.android.email"

    aput-object v2, v1, v6

    .line 62
    const-string v2, "com.android.calendar"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    .line 63
    const-string v3, "zte.com.cn.alarmclock"

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    .line 66
    new-array v1, v7, [Ljava/lang/String;

    aput-object v1, v0, v5

    .line 56
    sput-object v0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->PACKAGE_NAME:[[Ljava/lang/String;

    .line 75
    new-array v0, v6, [[Ljava/lang/String;

    .line 77
    new-array v1, v7, [Ljava/lang/String;

    .line 78
    const-string v2, "com.android.mms.ui.ConversationList"

    aput-object v2, v1, v4

    .line 79
    const-string v2, "com.android.contacts.activities.DialtactsActivity"

    aput-object v2, v1, v5

    .line 80
    const-string v2, "com.android.email.activity.Welcome"

    aput-object v2, v1, v6

    .line 81
    const-string v2, "com.android.calendar.AllInOneActivity"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    .line 82
    const-string v3, "zte.com.cn.alarmclock.AlarmClock"

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    .line 85
    new-array v1, v7, [Ljava/lang/String;

    aput-object v1, v0, v5

    .line 75
    sput-object v0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->CLASS_NAME:[[Ljava/lang/String;

    .line 95
    new-array v0, v6, [[Ljava/lang/String;

    .line 97
    new-array v1, v7, [Ljava/lang/String;

    .line 98
    const-string v2, "com.android.mms.ui.ConversationList"

    aput-object v2, v1, v4

    .line 99
    const-string v2, "com.android.contacts.activities.DialtactsActivity"

    aput-object v2, v1, v5

    .line 100
    const-string v2, "com.android.email.activity.Welcome"

    aput-object v2, v1, v6

    .line 101
    const-string v2, "com.android.calendar.AllInOneActivity"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    .line 102
    const-string v3, "zte.com.cn.alarmclock.AlarmClock"

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    .line 105
    new-array v1, v7, [Ljava/lang/String;

    aput-object v1, v0, v5

    .line 95
    sput-object v0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->CLASS_NAME_MORE:[[Ljava/lang/String;

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-direct {p0}, Lcom/zte/mifavor/launcher/LauncherAdapter;-><init>()V

    .line 116
    iput v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mPhoneTag:I

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mCallbacks:Ljava/util/HashMap;

    .line 643
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mWallpapers:Ljava/util/HashMap;

    .line 127
    iput-object p1, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mContext:Landroid/content/Context;

    .line 128
    iget-object v0, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 130
    sget-object v0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->PRODUCT:Ljava/lang/String;

    const-string v1, "P898S10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 131
    const-string v0, "LauncherAdapterImpl"

    const-string v1, "the product is P898S10."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iput v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mPhoneTag:I

    .line 154
    :goto_0
    return-void

    .line 134
    :cond_0
    sget-object v0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->PRODUCT:Ljava/lang/String;

    const-string v1, "P897A20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 135
    const-string v0, "LauncherAdapterImpl"

    const-string v1, "the product is P897A20."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iput v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mPhoneTag:I

    goto :goto_0

    .line 138
    :cond_1
    sget-object v0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->PRODUCT:Ljava/lang/String;

    const-string v1, "P897S10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 139
    const-string v0, "LauncherAdapterImpl"

    const-string v1, "the product is P897S10."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iput v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mPhoneTag:I

    goto :goto_0

    .line 142
    :cond_2
    sget-object v0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->PRODUCT:Ljava/lang/String;

    const-string v1, "P897S11"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 143
    const-string v0, "LauncherAdapterImpl"

    const-string v1, "the product is P897S11."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iput v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mPhoneTag:I

    goto :goto_0

    .line 146
    :cond_3
    sget-object v0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->PRODUCT:Ljava/lang/String;

    const-string v1, "MF30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    .line 147
    const-string v0, "LauncherAdapterImpl"

    const-string v1, "the product is MF30."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iput v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mPhoneTag:I

    goto :goto_0

    .line 151
    :cond_4
    const-string v0, "LauncherAdapterImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "the product is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mPhoneTag:I

    goto :goto_0
.end method

.method static synthetic access$1(Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;)V
    .locals 0

    .prologue
    .line 408
    invoke-direct {p0, p1}, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->callOnChange(Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;)V

    return-void
.end method

.method private callOnChange(Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;)V
    .locals 4
    .param p1, "packageType"    # Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;

    .prologue
    .line 409
    if-eqz p1, :cond_0

    .line 410
    iget-object v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 411
    .local v1, "callbacks":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/zte/mifavor/launcher/LauncherAdapter$IChangeCallback;>;"
    if-eqz v1, :cond_0

    .line 412
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 417
    .end local v1    # "callbacks":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/zte/mifavor/launcher/LauncherAdapter$IChangeCallback;>;"
    :cond_0
    return-void

    .line 412
    .restart local v1    # "callbacks":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/zte/mifavor/launcher/LauncherAdapter$IChangeCallback;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/mifavor/launcher/LauncherAdapter$IChangeCallback;

    .line 413
    .local v0, "callback":Lcom/zte/mifavor/launcher/LauncherAdapter$IChangeCallback;
    iget-object v3, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mContext:Landroid/content/Context;

    invoke-interface {v0, v3, p1}, Lcom/zte/mifavor/launcher/LauncherAdapter$IChangeCallback;->onChange(Landroid/content/Context;Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;)V

    goto :goto_0
.end method

.method private static numOfMissdeCall(Landroid/content/Context;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 511
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 512
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 514
    .local v8, "missedCalls":I
    :try_start_0
    sget-object v1, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$CallInfo;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$CallInfo;->PROJECT:[Ljava/lang/String;

    .line 515
    const-string v3, "type=3 AND new>0"

    .line 516
    sget-object v4, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$CallInfo;->SELECTIONARGS:[Ljava/lang/String;

    sget-object v5, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$CallInfo;->SORTORDER:Ljava/lang/String;

    .line 514
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 517
    .local v6, "cs":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 518
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 519
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 526
    .end local v6    # "cs":Landroid/database/Cursor;
    :cond_0
    :goto_0
    const-string v1, "LauncherAdapterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "numOfMissdeCall.missedCalls="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return v8

    .line 521
    :catch_0
    move-exception v7

    .line 522
    .local v7, "e":Ljava/lang/IllegalStateException;
    const-string v1, "LauncherAdapterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateMissCall:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$CallInfo;->URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 523
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v7

    .line 524
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "LauncherAdapterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "numOfMissdeCall-SQLiteException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$CallInfo;->URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private numOfUnreadCalendar(Landroid/content/Context;)I
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 564
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 565
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 567
    .local v8, "unreadCalendar":I
    :try_start_0
    sget-object v1, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$CalendarInfo;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$CalendarInfo;->PROJECT:[Ljava/lang/String;

    .line 568
    const-string v3, "(state=1)"

    .line 569
    sget-object v4, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$CalendarInfo;->SELECTIONARGS:[Ljava/lang/String;

    sget-object v5, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$CalendarInfo;->SORTORDER:Ljava/lang/String;

    .line 567
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 570
    .local v6, "cs":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 571
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 572
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    .end local v6    # "cs":Landroid/database/Cursor;
    :cond_0
    :goto_0
    const-string v1, "LauncherAdapterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "numOfUnreadCalendar:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    return v8

    .line 576
    :catch_0
    move-exception v7

    .line 577
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "LauncherAdapterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "numOfUnreadCalendar-SQLiteException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$CalendarInfo;->URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 575
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v1

    goto :goto_0

    .line 574
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private numOfUnreadEmail(Landroid/content/Context;)I
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 532
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 533
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 535
    .local v9, "unreadEmail":I
    :try_start_0
    sget-object v1, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$EmailInfo;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$EmailInfo;->PROJECT:[Ljava/lang/String;

    .line 536
    const-string v3, "unreadCount > 0"

    .line 537
    sget-object v4, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$EmailInfo;->SELECTIONARGS:[Ljava/lang/String;

    sget-object v5, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$EmailInfo;->SORTORDER:Ljava/lang/String;

    .line 535
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 538
    .local v6, "cs":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 539
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 540
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 541
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lt v8, v1, :cond_2

    .line 550
    .end local v8    # "i":I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 559
    .end local v6    # "cs":Landroid/database/Cursor;
    :cond_1
    :goto_1
    const-string v1, "LauncherAdapterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateUnreadEmail:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    return v9

    .line 542
    .restart local v6    # "cs":Landroid/database/Cursor;
    .restart local v8    # "i":I
    :cond_2
    :try_start_1
    const-string v1, "INBOX"

    .line 543
    sget-object v2, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$EmailInfo;->PROJECT:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 542
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 543
    if-eqz v1, :cond_3

    .line 545
    sget-object v1, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$EmailInfo;->PROJECT:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int/2addr v9, v1

    .line 547
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 541
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 552
    .end local v6    # "cs":Landroid/database/Cursor;
    .end local v8    # "i":I
    :catch_0
    move-exception v7

    .line 553
    .local v7, "e":Ljava/lang/IllegalStateException;
    const-string v1, "LauncherAdapterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IllegalStateException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$EmailInfo;->URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 554
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v7

    .line 555
    .local v7, "e":Ljava/lang/SecurityException;
    const-string v1, "LauncherAdapterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SecurityException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$EmailInfo;->URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 556
    .end local v7    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v7

    .line 557
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    const-string v1, "LauncherAdapterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateUnreadEmail-SQLiteException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$EmailInfo;->URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method private static numOfUnreadMessage(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 466
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 467
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->numOfUnreadMessage_sms(Landroid/content/ContentResolver;)I

    move-result v1

    invoke-static {v0}, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->numOfUnreadMessage_mms(Landroid/content/ContentResolver;)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private static numOfUnreadMessage_mms(Landroid/content/ContentResolver;)I
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 491
    const/4 v8, 0x0

    .line 493
    .local v8, "unReadMessage":I
    :try_start_0
    sget-object v1, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$MessageMms;->URI_MMS:Landroid/net/Uri;

    sget-object v2, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$MessageMms;->PROJECT:[Ljava/lang/String;

    .line 494
    const-string v3, "(read = 0)"

    .line 495
    sget-object v4, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$MessageMms;->SELECTIONARGS:[Ljava/lang/String;

    sget-object v5, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$MessageMms;->SORTORDER:Ljava/lang/String;

    move-object v0, p0

    .line 493
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 496
    .local v7, "msmCs":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 497
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 498
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 506
    .end local v7    # "msmCs":Landroid/database/Cursor;
    :cond_0
    :goto_0
    const-string v0, "LauncherAdapterImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateUnreadMessage.mms = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    return v8

    .line 500
    :catch_0
    move-exception v6

    .line 501
    .local v6, "e":Ljava/lang/IllegalStateException;
    const-string v0, "LauncherAdapterImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateUnreadMessage:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$MessageMms;->URI_MMS:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 502
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v6

    .line 503
    .local v6, "e":Landroid/database/sqlite/SQLiteException;
    const-string v0, "LauncherAdapterImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateUnreadMessage-SQLiteException:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$MessageMms;->URI_MMS:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static numOfUnreadMessage_sms(Landroid/content/ContentResolver;)I
    .locals 9
    .param p0, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 471
    const/4 v8, 0x0

    .line 473
    .local v8, "unReadMessage":I
    :try_start_0
    sget-object v1, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$MessageSms;->URI_SMS:Landroid/net/Uri;

    sget-object v2, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$MessageSms;->PROJECT:[Ljava/lang/String;

    .line 474
    const-string v3, "(type = 1 AND read = 0)"

    .line 475
    sget-object v4, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$MessageSms;->SELECTIONARGS:[Ljava/lang/String;

    sget-object v5, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$MessageSms;->SORTORDER:Ljava/lang/String;

    move-object v0, p0

    .line 473
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 476
    .local v7, "smsCs":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 477
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/2addr v8, v0

    .line 478
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 486
    .end local v7    # "smsCs":Landroid/database/Cursor;
    :cond_0
    :goto_0
    const-string v0, "LauncherAdapterImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateUnreadMessage.sms = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return v8

    .line 480
    :catch_0
    move-exception v6

    .line 481
    .local v6, "e":Ljava/lang/IllegalStateException;
    const-string v0, "LauncherAdapterImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateUnreadMessage:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$MessageSms;->URI_SMS:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 482
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v6

    .line 483
    .local v6, "e":Landroid/database/sqlite/SQLiteException;
    const-string v0, "LauncherAdapterImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateUnreadMessage-SQLiteException:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$MessageSms;->URI_SMS:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public colorChanged(IIIIIIIII)Z
    .locals 3
    .param p1, "bgColor"    # I
    .param p2, "colorHT"    # I
    .param p3, "colorCC"    # I
    .param p4, "colorCB"    # I
    .param p5, "colorCI"    # I
    .param p6, "colorMB"    # I
    .param p7, "colorBB"    # I
    .param p8, "colorSB"    # I
    .param p9, "colorSI"    # I

    .prologue
    .line 181
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 182
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.zte.mifavorlauncher.support.COLOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    const-string v1, "action"

    const-string v2, "COLOR_CHANGED"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v1, "bgColor"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 185
    const-string v1, "foreColor"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 186
    const-string v1, "Color2"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    const-string v1, "Color3"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 188
    const-string v1, "Color4"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    const-string v1, "Color5"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    const-string v1, "Color6"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    const-string v1, "Color7"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    const-string v1, "Color8"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    iget-object v1, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 195
    const/4 v1, 0x1

    .line 197
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method generatePlaceholderViews(I)Ljava/util/List;
    .locals 3
    .param p1, "amount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$LiveWallpaperInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 706
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 707
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$LiveWallpaperInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 711
    return-object v2

    .line 708
    :cond_0
    new-instance v1, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$LiveWallpaperInfo;

    invoke-direct {v1, p0}, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$LiveWallpaperInfo;-><init>(Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;)V

    .line 709
    .local v1, "info":Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$LiveWallpaperInfo;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getComponentName(Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "packageType"    # Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;

    .prologue
    .line 293
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->getComponentName(Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;I)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getComponentName(Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;I)Landroid/content/ComponentName;
    .locals 5
    .param p1, "packageType"    # Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;
    .param p2, "incomeCount"    # I

    .prologue
    .line 298
    if-eqz p1, :cond_1

    .line 299
    sget-object v3, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->PACKAGE_NAME:[[Ljava/lang/String;

    iget v4, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mPhoneTag:I

    aget-object v3, v3, v4

    invoke-virtual {p1}, Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;->ordinal()I

    move-result v4

    aget-object v2, v3, v4

    .line 300
    .local v2, "packageName":Ljava/lang/String;
    const/4 v3, 0x1

    if-gt p2, v3, :cond_0

    sget-object v0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->CLASS_NAME:[[Ljava/lang/String;

    .line 301
    .local v0, "classNames":[[Ljava/lang/String;
    :goto_0
    iget v3, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mPhoneTag:I

    aget-object v3, v0, v3

    invoke-virtual {p1}, Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;->ordinal()I

    move-result v4

    aget-object v1, v3, v4

    .line 302
    .local v1, "clsName":Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 303
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .end local v0    # "classNames":[[Ljava/lang/String;
    .end local v1    # "clsName":Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 300
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_0
    sget-object v0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->CLASS_NAME_MORE:[[Ljava/lang/String;

    goto :goto_0

    .line 306
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getCurLockWallpaper()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 729
    const/4 v0, 0x0

    .line 731
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v4, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 733
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string v4, "content://com.zte.mifavorlauncher.launchercontentprovider/lockscreen.jpg"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 732
    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 734
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 738
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v3    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 735
    :catch_0
    move-exception v2

    .line 736
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "LauncherAdapterImpl"

    const-string v5, "exception while reading btimap "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getGalleryWallpaperIcon()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 756
    const/4 v0, 0x0

    .line 758
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v4, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 760
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const-string v4, "content://com.zte.mifavorlauncher.launchercontentprovider/galleryIcon.jpg"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 759
    invoke-virtual {v1, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 761
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 765
    .end local v1    # "contentResolver":Landroid/content/ContentResolver;
    .end local v3    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 762
    :catch_0
    move-exception v2

    .line 763
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "LauncherAdapterImpl"

    const-string v5, "exception while reading btimap "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getIncomeCount(Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;)I
    .locals 3
    .param p1, "packageType"    # Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;

    .prologue
    .line 311
    const/4 v0, 0x0

    .line 312
    .local v0, "count":I
    invoke-static {}, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->$SWITCH_TABLE$com$zte$mifavor$launcher$LauncherAdapter$PackageType()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 328
    :goto_0
    return v0

    .line 314
    :pswitch_0
    iget-object v1, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->numOfUnreadMessage(Landroid/content/Context;)I

    move-result v0

    .line 315
    goto :goto_0

    .line 317
    :pswitch_1
    iget-object v1, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->numOfMissdeCall(Landroid/content/Context;)I

    move-result v0

    .line 318
    goto :goto_0

    .line 320
    :pswitch_2
    iget-object v1, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->numOfUnreadEmail(Landroid/content/Context;)I

    move-result v0

    .line 321
    goto :goto_0

    .line 323
    :pswitch_3
    iget-object v1, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->numOfUnreadCalendar(Landroid/content/Context;)I

    move-result v0

    .line 324
    goto :goto_0

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getLiveWallpaperList()Ljava/util/Map;
    .locals 13
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

    .prologue
    .line 647
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 649
    .local v4, "liveWallpapers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    iget-object v9, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 652
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.service.wallpaper.WallpaperService"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 653
    const/16 v10, 0x80

    .line 651
    invoke-virtual {v5, v9, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 655
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_0

    .line 683
    return-object v4

    .line 655
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 656
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v2, 0x0

    .line 658
    .local v2, "info":Landroid/app/WallpaperInfo;
    :try_start_0
    new-instance v2, Landroid/app/WallpaperInfo;

    .end local v2    # "info":Landroid/app/WallpaperInfo;
    iget-object v10, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v10, v6}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 665
    .restart local v2    # "info":Landroid/app/WallpaperInfo;
    new-instance v8, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$LiveWallpaperInfo;

    invoke-direct {v8, p0}, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$LiveWallpaperInfo;-><init>(Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;)V

    .line 666
    .local v8, "wallpaper":Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$LiveWallpaperInfo;
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.service.wallpaper.WallpaperService"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v10, v8, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$LiveWallpaperInfo;->intent:Landroid/content/Intent;

    .line 667
    iget-object v10, v8, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$LiveWallpaperInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    iput-object v2, v8, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$LiveWallpaperInfo;->info:Landroid/app/WallpaperInfo;

    .line 670
    invoke-virtual {v2, v5}, Landroid/app/WallpaperInfo;->loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 671
    .local v7, "thumb":Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_1

    .line 672
    invoke-virtual {v2, v5}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    iget-object v10, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mWallpapers:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 659
    .end local v2    # "info":Landroid/app/WallpaperInfo;
    .end local v7    # "thumb":Landroid/graphics/drawable/Drawable;
    .end local v8    # "wallpaper":Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$LiveWallpaperInfo;
    :catch_0
    move-exception v1

    .line 660
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_0

    .line 661
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v1

    .line 662
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    .line 676
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "info":Landroid/app/WallpaperInfo;
    .restart local v7    # "thumb":Landroid/graphics/drawable/Drawable;
    .restart local v8    # "wallpaper":Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$LiveWallpaperInfo;
    :cond_1
    iput-object v7, v8, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$LiveWallpaperInfo;->thumbnail:Landroid/graphics/drawable/Drawable;

    move-object v0, v7

    .line 677
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 679
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2, v5}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    iget-object v10, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mWallpapers:Ljava/util/HashMap;

    invoke-virtual {v2, v5}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public isRunningInCtaVersion()Z
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 771
    :try_start_0
    const-string v10, "com.zte.config.zteConfig"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 772
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v1, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 773
    .local v3, "ct":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v3, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 776
    .local v2, "config":Ljava/lang/Object;
    const-string v10, "getVersionType"

    const/4 v11, 0x0

    invoke-virtual {v1, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 777
    .local v5, "getVersionType":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v5, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 778
    .local v7, "retValue":Ljava/lang/Object;
    check-cast v7, Ljava/lang/Integer;

    .end local v7    # "retValue":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 779
    .local v8, "versionType":I
    const-string v10, "NETWORK_VER"

    invoke-virtual {v1, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 780
    .local v6, "networkVer":Ljava/lang/reflect/Field;
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 781
    .local v0, "Value_network_ver":I
    if-ne v8, v0, :cond_0

    .line 782
    const-string v10, "LauncherAdapterImpl"

    const-string v11, "isRunningInCtaVersion() is NETWORK_VER"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/4 v9, 0x1

    .line 791
    .end local v0    # "Value_network_ver":I
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "config":Ljava/lang/Object;
    .end local v3    # "ct":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "getVersionType":Ljava/lang/reflect/Method;
    .end local v6    # "networkVer":Ljava/lang/reflect/Field;
    .end local v8    # "versionType":I
    :goto_0
    return v9

    .line 785
    .restart local v0    # "Value_network_ver":I
    .restart local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "config":Ljava/lang/Object;
    .restart local v3    # "ct":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v5    # "getVersionType":Ljava/lang/reflect/Method;
    .restart local v6    # "networkVer":Ljava/lang/reflect/Field;
    .restart local v8    # "versionType":I
    :cond_0
    const-string v10, "LauncherAdapterImpl"

    const-string v11, "isRunningInCtaVersion() is not NETWORK_VER"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 788
    .end local v0    # "Value_network_ver":I
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "config":Ljava/lang/Object;
    .end local v3    # "ct":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "getVersionType":Ljava/lang/reflect/Method;
    .end local v6    # "networkVer":Ljava/lang/reflect/Field;
    .end local v8    # "versionType":I
    :catch_0
    move-exception v4

    .line 789
    .local v4, "e":Ljava/lang/Exception;
    const-string v10, "LauncherAdapterImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "isRunningInCtaVersion:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSupportPrivateInterface()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 158
    sget-object v1, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->PRODUCT:Ljava/lang/String;

    const-string v2, "P898S10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v0

    .line 161
    :cond_1
    sget-object v1, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->PRODUCT:Ljava/lang/String;

    const-string v2, "P897A20"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    .line 164
    sget-object v1, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->PRODUCT:Ljava/lang/String;

    const-string v2, "P897S10"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    .line 167
    sget-object v1, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->PRODUCT:Ljava/lang/String;

    const-string v2, "P897S11"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    .line 170
    sget-object v1, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->PRODUCT:Ljava/lang/String;

    const-string v2, "MF30"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    .line 174
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized registerMonitor(Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;Lcom/zte/mifavor/launcher/LauncherAdapter$IChangeCallback;)V
    .locals 5
    .param p1, "packageType"    # Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;
    .param p2, "callback"    # Lcom/zte/mifavor/launcher/LauncherAdapter$IChangeCallback;

    .prologue
    .line 333
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 335
    .local v1, "resolver":Landroid/content/ContentResolver;
    if-eqz p1, :cond_1

    .line 336
    iget-object v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 337
    .local v0, "callbacks":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/zte/mifavor/launcher/LauncherAdapter$IChangeCallback;>;"
    if-nez v0, :cond_0

    .line 338
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "callbacks":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/zte/mifavor/launcher/LauncherAdapter$IChangeCallback;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 339
    .restart local v0    # "callbacks":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/zte/mifavor/launcher/LauncherAdapter$IChangeCallback;>;"
    iget-object v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 344
    .end local v0    # "callbacks":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/zte/mifavor/launcher/LauncherAdapter$IChangeCallback;>;"
    :cond_1
    invoke-static {}, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->$SWITCH_TABLE$com$zte$mifavor$launcher$LauncherAdapter$PackageType()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v2, :pswitch_data_0

    .line 406
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 346
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mSmsObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_2

    .line 347
    new-instance v2, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$1;-><init>(Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mSmsObserver:Landroid/database/ContentObserver;

    .line 355
    sget-object v2, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$MessageSms;->URI_OBSERVER:Landroid/net/Uri;

    const/4 v3, 0x0

    .line 356
    iget-object v4, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mSmsObserver:Landroid/database/ContentObserver;

    .line 355
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 333
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 361
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    :pswitch_1
    :try_start_2
    iget-object v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mCallObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_2

    .line 362
    new-instance v2, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$2;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$2;-><init>(Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mCallObserver:Landroid/database/ContentObserver;

    .line 370
    sget-object v2, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$CallInfo;->URI:Landroid/net/Uri;

    const/4 v3, 0x0

    .line 371
    iget-object v4, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mCallObserver:Landroid/database/ContentObserver;

    .line 370
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 376
    :pswitch_2
    iget-object v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mEmailObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_2

    .line 377
    new-instance v2, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$3;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$3;-><init>(Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mEmailObserver:Landroid/database/ContentObserver;

    .line 385
    sget-object v2, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$EmailInfo;->URI:Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mEmailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 390
    :pswitch_3
    iget-object v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mCalendarObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_2

    .line 391
    new-instance v2, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$4;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$4;-><init>(Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mCalendarObserver:Landroid/database/ContentObserver;

    .line 399
    sget-object v2, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$CalendarInfo;->URI:Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mCalendarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 344
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setCurLockWallpaper(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 717
    :try_start_0
    iget-object v3, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 719
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v3, "content://com.zte.mifavorlauncher.launchercontentprovider/lockscreen.jpg"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "w"

    .line 718
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2

    .line 720
    .local v2, "outStream":Ljava/io/OutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x32

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 721
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "outStream":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 722
    :catch_0
    move-exception v1

    .line 723
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "LauncherAdapterImpl"

    const-string v4, "exception while writing btimap"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setGalleryWallpaperIcon(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 744
    :try_start_0
    iget-object v3, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 746
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v3, "content://com.zte.mifavorlauncher.launchercontentprovider/galleryIcon.jpg"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "w"

    .line 745
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v2

    .line 747
    .local v2, "outStream":Ljava/io/OutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x32

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 748
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v2    # "outStream":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 749
    :catch_0
    move-exception v1

    .line 750
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "LauncherAdapterImpl"

    const-string v4, "exception while writing btimap"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setLiveWallpaper(Ljava/lang/String;)Z
    .locals 4
    .param p1, "wallpaperName"    # Ljava/lang/String;

    .prologue
    .line 689
    :try_start_0
    iget-object v1, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getIWallpaperManager()Landroid/app/IWallpaperManager;

    move-result-object v2

    .line 690
    iget-object v1, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mWallpapers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$LiveWallpaperInfo;

    iget-object v1, v1, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl$LiveWallpaperInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 689
    invoke-interface {v2, v1}, Landroid/app/IWallpaperManager;->setWallpaperComponent(Landroid/content/ComponentName;)V

    .line 691
    iget-object v1, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    const/4 v1, 0x1

    .line 695
    :goto_0
    return v1

    .line 694
    :catch_0
    move-exception v0

    .line 695
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setStatusBarColor(II)V
    .locals 2
    .param p1, "bgColor"    # I
    .param p2, "foreColor"    # I

    .prologue
    .line 215
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 216
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.zte.mifavorlauncher.support.SET_SB_COLOR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v1, "bgColor"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    const-string v1, "foreColor"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    iget-object v1, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 222
    :cond_0
    return-void
.end method

.method public uninstallApps(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v0, "UninstallFailApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    const-string v9, "com.zte.launcherlibimpl"

    .line 259
    .local v9, "pkg":Ljava/lang/String;
    const-string v4, "com.zte.batchuninstaller.UninstallAppProgress"

    .line 260
    .local v4, "cls":Ljava/lang/String;
    const-string v3, "com.android.packageinstaller.applicationInfo.appsInfo"

    .line 262
    .local v3, "appsInfo":Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    const-string v10, "android.intent.action.VIEW"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v10, 0x10000000

    invoke-virtual {v7, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 264
    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.zte.launcherlibimpl"

    const-string v12, "com.zte.batchuninstaller.UninstallAppProgress"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 265
    const-string v10, "LauncherAdapterImpl"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "intent :"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v2, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_3

    .line 281
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 282
    const-string v10, "com.android.packageinstaller.applicationInfo.appsInfo"

    invoke-virtual {v7, v10, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 283
    iget-object v10, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 286
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_0

    goto :goto_0

    .line 268
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 269
    .local v5, "comName":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 270
    .local v8, "packageName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 272
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v11, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 273
    const/16 v12, 0x2000

    .line 272
    invoke-virtual {v11, v8, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 274
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 275
    :catch_0
    move-exception v6

    .line 276
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "LauncherAdapterImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "NameNotFoundException:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public declared-synchronized unregisterMonitor(Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;Lcom/zte/mifavor/launcher/LauncherAdapter$IChangeCallback;)V
    .locals 4
    .param p1, "packageType"    # Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;
    .param p2, "callback"    # Lcom/zte/mifavor/launcher/LauncherAdapter$IChangeCallback;

    .prologue
    .line 421
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 423
    .local v1, "resolver":Landroid/content/ContentResolver;
    if-eqz p1, :cond_2

    .line 424
    iget-object v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 425
    .local v0, "callbacks":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/zte/mifavor/launcher/LauncherAdapter$IChangeCallback;>;"
    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 428
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 429
    :cond_1
    invoke-static {}, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->$SWITCH_TABLE$com$zte$mifavor$launcher$LauncherAdapter$PackageType()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/zte/mifavor/launcher/LauncherAdapter$PackageType;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v2, :pswitch_data_0

    .line 463
    .end local v0    # "callbacks":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/zte/mifavor/launcher/LauncherAdapter$IChangeCallback;>;"
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 431
    .restart local v0    # "callbacks":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/zte/mifavor/launcher/LauncherAdapter$IChangeCallback;>;"
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mSmsObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_2

    .line 432
    iget-object v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mSmsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 433
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mSmsObserver:Landroid/database/ContentObserver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 421
    .end local v0    # "callbacks":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/zte/mifavor/launcher/LauncherAdapter$IChangeCallback;>;"
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 438
    .restart local v0    # "callbacks":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/zte/mifavor/launcher/LauncherAdapter$IChangeCallback;>;"
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    :pswitch_1
    :try_start_2
    iget-object v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mCallObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_2

    .line 439
    iget-object v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mCallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 440
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mCallObserver:Landroid/database/ContentObserver;

    goto :goto_0

    .line 445
    :pswitch_2
    iget-object v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mEmailObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_2

    .line 446
    iget-object v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mEmailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 447
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mEmailObserver:Landroid/database/ContentObserver;

    goto :goto_0

    .line 452
    :pswitch_3
    iget-object v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mCalendarObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_2

    .line 453
    iget-object v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mCalendarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 454
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mCalendarObserver:Landroid/database/ContentObserver;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 429
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public wallPaperChanged(II)Z
    .locals 2
    .param p1, "bgColor"    # I
    .param p2, "foreColor"    # I

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 203
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.zte.mifavorlauncher.support.WALLPAPER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string v1, "bgColor"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    const-string v1, "foreColor"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    iget-object v1, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 208
    const/4 v1, 0x1

    .line 210
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public widgetBgChanged(IILjava/lang/String;)Z
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "bgColor"    # I
    .param p3, "componentName"    # Ljava/lang/String;

    .prologue
    .line 239
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 240
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.zte.mifavorlauncher.support.WIDGET_SETTING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string v1, "widgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    const-string v1, "bgColor"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    const-string v1, "providerName"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    iget-object v1, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 246
    const/4 v1, 0x1

    .line 248
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public widgetOnLongClickChanged(ILjava/lang/String;)Z
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "componentName"    # Ljava/lang/String;

    .prologue
    .line 226
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 227
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.zte.mifavorlauncher.support.WIDGET_LONG_CLICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string v1, "widgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    const-string v1, "providerName"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    iget-object v1, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/zte/mifavor/launcher/model/LauncherAdapterImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 232
    const/4 v1, 0x1

    .line 234
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
