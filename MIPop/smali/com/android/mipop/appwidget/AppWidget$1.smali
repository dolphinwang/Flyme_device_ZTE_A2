.class Lcom/android/mipop/appwidget/AppWidget$1;
.super Landroid/database/ContentObserver;
.source "AppWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/appwidget/AppWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/appwidget/AppWidget;


# direct methods
.method constructor <init>(Lcom/android/mipop/appwidget/AppWidget;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/mipop/appwidget/AppWidget$1;->this$0:Lcom/android/mipop/appwidget/AppWidget;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/mipop/appwidget/AppWidget$1;->this$0:Lcom/android/mipop/appwidget/AppWidget;

    const-string v2, "mMipopObserver ContentObserver onChange()"

    # invokes: Lcom/android/mipop/appwidget/AppWidget;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/mipop/appwidget/AppWidget;->access$000(Lcom/android/mipop/appwidget/AppWidget;Ljava/lang/String;)V

    .line 128
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mipop/appwidget/AppWidget$1;->this$0:Lcom/android/mipop/appwidget/AppWidget;

    # getter for: Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mipop/appwidget/AppWidget;->access$100(Lcom/android/mipop/appwidget/AppWidget;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/mipop/appwidget/AppWidget;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .local v0, "bcastMipop":Landroid/content/Intent;
    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    iget-object v1, p0, Lcom/android/mipop/appwidget/AppWidget$1;->this$0:Lcom/android/mipop/appwidget/AppWidget;

    # getter for: Lcom/android/mipop/appwidget/AppWidget;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mipop/appwidget/AppWidget;->access$100(Lcom/android/mipop/appwidget/AppWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 131
    return-void
.end method
