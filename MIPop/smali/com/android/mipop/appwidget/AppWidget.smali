.class public Lcom/android/mipop/appwidget/AppWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "AppWidget.java"


# static fields
.field public static final HIDE:I = 0x0

.field private static final OFF:Z = false

.field private static final ON:Z = true

.field public static final SHOW:I = 0x1

.field private static final disableAlpha:I = 0x64

.field private static final enableAlpha:I = 0xff

.field private static final mHasNavbar:Ljava/lang/String; = "show"

.field private static mMipopStatus:Z = false

.field private static final mNavbarKey:Ljava/lang/String; = "showNavigationBar"

.field private static mNavbarStatus:Z = false

.field private static final mNoNavbar:Ljava/lang/String; = "hide"


# instance fields
.field private final DBG:Z

.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mMipopObserver:Landroid/database/ContentObserver;

.field private mNavbarObserver:Landroid/database/ContentObserver;

.field private mWidgetIds:[I

.field private mWidgetManager:Landroid/appwidget/AppWidgetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput-boolean v0, Lcom/android/mipop/appwidget/AppWidget;->mMipopStatus:Z

    .line 51
    sput-boolean v0, Lcom/android/mipop/appwidget/AppWidget;->mNavbarStatus:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 32
    const-string v0, "Suhao.AppWidget"

    iput-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->TAG:Ljava/lang/String;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/appwidget/AppWidget;->DBG:Z

    .line 53
    iput-object v1, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    .line 54
    iput-object v1, p0, Lcom/android/mipop/appwidget/AppWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 124
    new-instance v0, Lcom/android/mipop/appwidget/AppWidget$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mipop/appwidget/AppWidget$1;-><init>(Lcom/android/mipop/appwidget/AppWidget;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->mMipopObserver:Landroid/database/ContentObserver;

    .line 137
    new-instance v0, Lcom/android/mipop/appwidget/AppWidget$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mipop/appwidget/AppWidget$2;-><init>(Lcom/android/mipop/appwidget/AppWidget;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->mNavbarObserver:Landroid/database/ContentObserver;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/mipop/appwidget/AppWidget;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/mipop/appwidget/AppWidget;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/mipop/appwidget/AppWidget;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mipop/appwidget/AppWidget;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/appwidget/AppWidget;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private buildUpdate()Landroid/widget/RemoteViews;
    .locals 9

    .prologue
    const/high16 v8, 0x8000000

    const/4 v7, 0x0

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildUpdate() mNavbarStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/mipop/appwidget/AppWidget;->mNavbarStatus:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/mipop/appwidget/AppWidget;->log(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lcom/android/mipop/appwidget/AppWidget;->getMipopStatus()Z

    move-result v5

    sput-boolean v5, Lcom/android/mipop/appwidget/AppWidget;->mMipopStatus:Z

    .line 156
    invoke-direct {p0}, Lcom/android/mipop/appwidget/AppWidget;->getNavbarStatus()Z

    move-result v5

    sput-boolean v5, Lcom/android/mipop/appwidget/AppWidget;->mNavbarStatus:Z

    .line 158
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030064

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 160
    .local v4, "views":Landroid/widget/RemoteViews;
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/mipop/appwidget/AppWidget;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .local v1, "bcastMipop":Landroid/content/Intent;
    const-string v5, "widgetMipopStatusUpdate"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    iget-object v5, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 164
    .local v3, "pendingMipop":Landroid/app/PendingIntent;
    const v5, 0x7f0600ad

    invoke-virtual {v4, v5, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 166
    new-instance v0, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/mipop/appwidget/AppWidget;

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 167
    .local v0, "bcastFull":Landroid/content/Intent;
    const-string v5, "widgetNavbarStatusUpdate"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    iget-object v5, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 170
    .local v2, "pendingFull":Landroid/app/PendingIntent;
    const v5, 0x7f0600b4

    invoke-virtual {v4, v5, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 172
    invoke-direct {p0, v4}, Lcom/android/mipop/appwidget/AppWidget;->updateUI(Landroid/widget/RemoteViews;)V

    .line 174
    return-object v4
.end method

.method private getDatabaseMipop()I
    .locals 5

    .prologue
    .line 287
    const/4 v1, 0x0

    .line 289
    .local v1, "mipopContent":I
    :try_start_0
    iget-object v2, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "MIPOP"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 290
    iget-object v2, p0, Lcom/android/mipop/appwidget/AppWidget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "singelWidget getDatabaseMipop mipopContent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    iget-object v2, p0, Lcom/android/mipop/appwidget/AppWidget;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "singelWidget getDatabaseMipop() mipopContent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return v1

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/mipop/appwidget/AppWidget;->TAG:Ljava/lang/String;

    const-string v3, "singelWidget mipop SettingNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getMipopStatus()Z
    .locals 1

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/android/mipop/appwidget/AppWidget;->getDatabaseMipop()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNavbarStateInDb()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    iget-object v1, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "showNavigationBar"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "isShow":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNavbarStateInDb() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mipop/appwidget/AppWidget;->log(Ljava/lang/String;)V

    .line 97
    return-object v0
.end method

.method private getNavbarStatus()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 308
    iget-object v3, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 309
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-direct {p0}, Lcom/android/mipop/appwidget/AppWidget;->getNavbarStateInDb()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "navbar":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNavbarStatus() navbar = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/mipop/appwidget/AppWidget;->log(Ljava/lang/String;)V

    .line 311
    const-string v3, "show"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 312
    const/4 v2, 0x1

    .line 317
    :cond_0
    :goto_0
    return v2

    .line 313
    :cond_1
    const-string v3, "hide"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 316
    iget-object v3, p0, Lcom/android/mipop/appwidget/AppWidget;->TAG:Ljava/lang/String;

    const-string v4, "getNavbarStatus() navbar in data base is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method private modifyDatabaseMipop(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 80
    iget-object v1, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 81
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 82
    const-string v1, "MIPOP"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_0
    const-string v1, "MIPOP"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private modifyDatabaseNavbar(Z)V
    .locals 4
    .param p1, "hasNavbar"    # Z

    .prologue
    .line 107
    iget-object v2, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 108
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-direct {p0}, Lcom/android/mipop/appwidget/AppWidget;->getNavbarStateInDb()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "navbar":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 110
    const-string v2, "show"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    const-string v2, "showNavigationBar"

    const-string v3, "show"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    const-string v2, "hide"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    const-string v2, "showNavigationBar"

    const-string v3, "hide"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 116
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/mipop/appwidget/AppWidget;->modifyDatabaseMipop(Z)V

    goto :goto_0
.end method

.method private setup(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->TAG:Ljava/lang/String;

    const-string v1, "setup()  context = "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iput-object p1, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    .line 269
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 270
    iget-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/mipop/appwidget/AppWidget;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->mWidgetIds:[I

    .line 271
    return-void
.end method

.method private updateUI(Landroid/widget/RemoteViews;)V
    .locals 9
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v4, -0x1

    .line 183
    sget-boolean v0, Lcom/android/mipop/appwidget/AppWidget;->mNavbarStatus:Z

    if-nez v0, :cond_0

    .line 185
    const v0, 0x7f0600b6

    invoke-virtual {p1, v0, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 186
    const v0, 0x7f0600b8

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 188
    const v1, 0x7f0600af

    const/16 v3, 0x64

    move-object v0, p1

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 189
    const v1, 0x7f0600ae

    const/16 v3, 0x64

    move-object v0, p1

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 190
    const v1, 0x7f0600b8

    const/16 v3, 0xff

    move-object v0, p1

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 191
    const v1, 0x7f0600b5

    const/16 v3, 0xff

    move-object v0, p1

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 206
    :goto_0
    sget-boolean v0, Lcom/android/mipop/appwidget/AppWidget;->mMipopStatus:Z

    if-eqz v0, :cond_1

    .line 207
    const v0, 0x7f0600af

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 208
    const v0, 0x7f0600b1

    invoke-virtual {p1, v0, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 214
    :goto_1
    return-void

    .line 198
    :cond_0
    const v0, 0x7f0600b6

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 199
    const v0, 0x7f0600b8

    invoke-virtual {p1, v0, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 201
    const v1, 0x7f0600af

    const/16 v3, 0xff

    move-object v0, p1

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 202
    const v1, 0x7f0600ae

    const/16 v3, 0xff

    move-object v0, p1

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    goto :goto_0

    .line 210
    :cond_1
    const v0, 0x7f0600af

    invoke-virtual {p1, v0, v8}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 211
    const v0, 0x7f0600b1

    invoke-virtual {p1, v0, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1
.end method

.method private widgetMipopStatusChanged()V
    .locals 2

    .prologue
    .line 337
    const-string v1, "widget: widgetMipopStatusChanged"

    invoke-direct {p0, v1}, Lcom/android/mipop/appwidget/AppWidget;->log(Ljava/lang/String;)V

    .line 338
    invoke-direct {p0}, Lcom/android/mipop/appwidget/AppWidget;->getNavbarStatus()Z

    move-result v1

    sput-boolean v1, Lcom/android/mipop/appwidget/AppWidget;->mNavbarStatus:Z

    .line 339
    sget-boolean v1, Lcom/android/mipop/appwidget/AppWidget;->mNavbarStatus:Z

    if-eqz v1, :cond_0

    .line 340
    sget-boolean v1, Lcom/android/mipop/appwidget/AppWidget;->mMipopStatus:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 341
    .local v0, "mipopOn":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/mipop/appwidget/AppWidget;->modifyDatabaseMipop(Z)V

    .line 343
    .end local v0    # "mipopOn":Z
    :cond_0
    return-void

    .line 340
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private widgetNavbarStatusChanged()V
    .locals 3

    .prologue
    .line 327
    sget-boolean v1, Lcom/android/mipop/appwidget/AppWidget;->mNavbarStatus:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 328
    .local v0, "mNavbarOn":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "widgetNavbarStatusChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mipop/appwidget/AppWidget;->mNavbarStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mipop/appwidget/AppWidget;->log(Ljava/lang/String;)V

    .line 329
    invoke-direct {p0, v0}, Lcom/android/mipop/appwidget/AppWidget;->modifyDatabaseNavbar(Z)V

    .line 331
    return-void

    .line 327
    .end local v0    # "mNavbarOn":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 234
    const-string v0, "onDisabled()"

    invoke-direct {p0, v0}, Lcom/android/mipop/appwidget/AppWidget;->log(Ljava/lang/String;)V

    .line 235
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 236
    invoke-direct {p0, p1}, Lcom/android/mipop/appwidget/AppWidget;->setup(Landroid/content/Context;)V

    .line 238
    iget-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/appwidget/AppWidget;->mMipopObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 239
    iget-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/appwidget/AppWidget;->mNavbarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 240
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 219
    iget-object v1, p0, Lcom/android/mipop/appwidget/AppWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEnabled() context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 221
    invoke-direct {p0, p1}, Lcom/android/mipop/appwidget/AppWidget;->setup(Landroid/content/Context;)V

    .line 223
    iget-object v1, p0, Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 224
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "MIPOP"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mipop/appwidget/AppWidget;->mMipopObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 226
    const-string v1, "showNavigationBar"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mipop/appwidget/AppWidget;->mNavbarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 229
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 245
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 246
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/mipop/appwidget/AppWidget;->log(Ljava/lang/String;)V

    .line 247
    invoke-direct {p0, p1}, Lcom/android/mipop/appwidget/AppWidget;->setup(Landroid/content/Context;)V

    .line 249
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "widgetMipopStatusUpdate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/android/mipop/appwidget/AppWidget;->widgetMipopStatusChanged()V

    .line 252
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "widgetNavbarStatusUpdate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 253
    invoke-direct {p0}, Lcom/android/mipop/appwidget/AppWidget;->widgetNavbarStatusChanged()V

    .line 256
    :cond_1
    invoke-direct {p0}, Lcom/android/mipop/appwidget/AppWidget;->buildUpdate()Landroid/widget/RemoteViews;

    move-result-object v4

    .line 257
    .local v4, "views":Landroid/widget/RemoteViews;
    iget-object v0, p0, Lcom/android/mipop/appwidget/AppWidget;->mWidgetIds:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget v1, v0, v2

    .line 258
    .local v1, "i":I
    iget-object v5, p0, Lcom/android/mipop/appwidget/AppWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v5, v1, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    .end local v1    # "i":I
    :cond_2
    return-void
.end method
