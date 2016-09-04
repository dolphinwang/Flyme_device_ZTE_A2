.class public Lcom/android/mipop/appwidget/SingleGridAppWidget;
.super Landroid/appwidget/AppWidgetProvider;
.source "SingleGridAppWidget.java"


# static fields
.field public static final HIDE:I = 0x0

.field public static final SHOW:I = 0x1

.field private static statusMipop:Z


# instance fields
.field private DBG:Z

.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mMipopObserver:Landroid/database/ContentObserver;

.field private mWidgetIds:[I

.field private mWidgetManager:Landroid/appwidget/AppWidgetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusMipop:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 34
    const-string v0, "Suhao.SingleGridAppWidget"

    iput-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->DBG:Z

    .line 37
    iput-object v1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;

    .line 38
    iput-object v1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 133
    new-instance v0, Lcom/android/mipop/appwidget/SingleGridAppWidget$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mipop/appwidget/SingleGridAppWidget$1;-><init>(Lcom/android/mipop/appwidget/SingleGridAppWidget;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mMipopObserver:Landroid/database/ContentObserver;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/mipop/appwidget/SingleGridAppWidget;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/appwidget/SingleGridAppWidget;

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/mipop/appwidget/SingleGridAppWidget;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/appwidget/SingleGridAppWidget;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mipop/appwidget/SingleGridAppWidget;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/mipop/appwidget/SingleGridAppWidget;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private buildUpdate()Landroid/widget/RemoteViews;
    .locals 6

    .prologue
    .line 151
    iget-object v3, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "singlegrid: buildUpdate() packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f030078

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 155
    .local v2, "views":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/mipop/appwidget/SingleGridAppWidget;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v0, "bcastMipop":Landroid/content/Intent;
    const-string v3, "widgetMipopUpdate"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget-object v3, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 159
    .local v1, "pendingMipop":Landroid/app/PendingIntent;
    const v3, 0x7f06013a

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 161
    invoke-direct {p0, v2}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->updateUI(Landroid/widget/RemoteViews;)V

    .line 163
    return-object v2
.end method

.method private getDatabaseMipop()I
    .locals 5

    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "MIPOP"

    iget-object v3, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 84
    .local v0, "mipopContent":I
    iget-boolean v1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "singelWidget getDatabaseMipop() mipopContent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->DBG:Z

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    return-void
.end method

.method private modifyDatabaseMipop(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 63
    iget-boolean v1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "modifyDatabaseMipop() value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 66
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_1

    .line 67
    const-string v1, "MIPOP"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_1
    const-string v1, "MIPOP"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private setup(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;

    .line 215
    iget-boolean v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->DBG:Z

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setup()  context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_0
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 218
    iget-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/mipop/appwidget/SingleGridAppWidget;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mWidgetIds:[I

    .line 220
    return-void
.end method

.method private updateSingleAppWidget()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 93
    invoke-direct {p0}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->getDatabaseMipop()I

    move-result v4

    .line 94
    .local v4, "mipopContent":I
    iget-boolean v6, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->DBG:Z

    if-eqz v6, :cond_0

    .line 95
    iget-object v6, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSingleAppWidget() mipopContent ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    if-ne v9, v4, :cond_1

    .line 98
    sput-boolean v9, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusMipop:Z

    .line 103
    :goto_0
    invoke-direct {p0}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->buildUpdate()Landroid/widget/RemoteViews;

    move-result-object v5

    .line 104
    .local v5, "views":Landroid/widget/RemoteViews;
    iget-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mWidgetIds:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget v1, v0, v2

    .line 105
    .local v1, "i":I
    iget-object v6, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v6, v1, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 100
    .end local v0    # "arr$":[I
    .end local v1    # "i":I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "views":Landroid/widget/RemoteViews;
    :cond_1
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusMipop:Z

    goto :goto_0

    .line 107
    .restart local v0    # "arr$":[I
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v5    # "views":Landroid/widget/RemoteViews;
    :cond_2
    return-void
.end method

.method private updateUI(Landroid/widget/RemoteViews;)V
    .locals 8
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    const v7, 0x7f06013d

    const v6, 0x7f06013b

    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 172
    invoke-direct {p0}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->getDatabaseMipop()I

    move-result v0

    .line 173
    .local v0, "mipopContent":I
    if-ne v1, v0, :cond_1

    .line 174
    sput-boolean v1, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusMipop:Z

    .line 179
    :goto_0
    iget-boolean v1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->DBG:Z

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "singlegrid: updateUI()  statusMipop = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusMipop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    sget-boolean v1, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusMipop:Z

    if-eqz v1, :cond_2

    .line 183
    invoke-virtual {p1, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 184
    invoke-virtual {p1, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 189
    :goto_1
    return-void

    .line 176
    :cond_1
    sput-boolean v4, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusMipop:Z

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {p1, v7, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 187
    invoke-virtual {p1, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1
.end method

.method private widgetMipopStatusChanged(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    iget-boolean v1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->TAG:Ljava/lang/String;

    const-string v2, "singlegrid: : widgetMipopStatusChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    sget-boolean v1, Lcom/android/mipop/appwidget/SingleGridAppWidget;->statusMipop:Z

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 230
    .local v0, "mipopOn":Z
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->modifyDatabaseMipop(Z)V

    .line 231
    return-void

    .line 229
    .end local v0    # "mipopOn":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    const-string v0, "onDisabled()"

    invoke-direct {p0, v0}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->log(Ljava/lang/String;)V

    .line 125
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 126
    invoke-direct {p0, p1}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->setup(Landroid/content/Context;)V

    .line 127
    iget-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mMipopObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 128
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    iget-boolean v1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->DBG:Z

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->TAG:Ljava/lang/String;

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

    .line 113
    :cond_0
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 114
    invoke-direct {p0, p1}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->setup(Landroid/content/Context;)V

    .line 116
    iget-object v1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 117
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "MIPOP"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mMipopObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 119
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 194
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 195
    invoke-direct {p0, p1}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->setup(Landroid/content/Context;)V

    .line 196
    iget-object v5, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "singlegrid: onReceive action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "widgetMipopUpdate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 199
    invoke-direct {p0, p1}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->widgetMipopStatusChanged(Landroid/content/Context;)V

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->buildUpdate()Landroid/widget/RemoteViews;

    move-result-object v4

    .line 203
    .local v4, "views":Landroid/widget/RemoteViews;
    iget-object v0, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mWidgetIds:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, v0, v2

    .line 204
    .local v1, "i":I
    iget-object v5, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget;->mWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v5, v1, v4}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 206
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
