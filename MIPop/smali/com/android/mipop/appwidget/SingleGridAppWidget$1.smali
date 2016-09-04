.class Lcom/android/mipop/appwidget/SingleGridAppWidget$1;
.super Landroid/database/ContentObserver;
.source "SingleGridAppWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/appwidget/SingleGridAppWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/appwidget/SingleGridAppWidget;


# direct methods
.method constructor <init>(Lcom/android/mipop/appwidget/SingleGridAppWidget;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget$1;->this$0:Lcom/android/mipop/appwidget/SingleGridAppWidget;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 136
    iget-object v1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget$1;->this$0:Lcom/android/mipop/appwidget/SingleGridAppWidget;

    # getter for: Lcom/android/mipop/appwidget/SingleGridAppWidget;->DBG:Z
    invoke-static {v1}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->access$000(Lcom/android/mipop/appwidget/SingleGridAppWidget;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget$1;->this$0:Lcom/android/mipop/appwidget/SingleGridAppWidget;

    # getter for: Lcom/android/mipop/appwidget/SingleGridAppWidget;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->access$100(Lcom/android/mipop/appwidget/SingleGridAppWidget;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContentObserver onChange()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget$1;->this$0:Lcom/android/mipop/appwidget/SingleGridAppWidget;

    # getter for: Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->access$200(Lcom/android/mipop/appwidget/SingleGridAppWidget;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/mipop/appwidget/SingleGridAppWidget;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 139
    .local v0, "bcastMipop":Landroid/content/Intent;
    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    iget-object v1, p0, Lcom/android/mipop/appwidget/SingleGridAppWidget$1;->this$0:Lcom/android/mipop/appwidget/SingleGridAppWidget;

    # getter for: Lcom/android/mipop/appwidget/SingleGridAppWidget;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mipop/appwidget/SingleGridAppWidget;->access$200(Lcom/android/mipop/appwidget/SingleGridAppWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 141
    return-void
.end method
