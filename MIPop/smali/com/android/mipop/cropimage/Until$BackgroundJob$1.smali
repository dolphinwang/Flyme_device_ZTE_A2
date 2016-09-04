.class Lcom/android/mipop/cropimage/Until$BackgroundJob$1;
.super Ljava/lang/Object;
.source "Until.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/cropimage/Until$BackgroundJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/cropimage/Until$BackgroundJob;


# direct methods
.method constructor <init>(Lcom/android/mipop/cropimage/Until$BackgroundJob;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/mipop/cropimage/Until$BackgroundJob$1;->this$0:Lcom/android/mipop/cropimage/Until$BackgroundJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/mipop/cropimage/Until$BackgroundJob$1;->this$0:Lcom/android/mipop/cropimage/Until$BackgroundJob;

    # getter for: Lcom/android/mipop/cropimage/Until$BackgroundJob;->mActivity:Lcom/android/mipop/cropimage/MonitoredActivity;
    invoke-static {v0}, Lcom/android/mipop/cropimage/Until$BackgroundJob;->access$000(Lcom/android/mipop/cropimage/Until$BackgroundJob;)Lcom/android/mipop/cropimage/MonitoredActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mipop/cropimage/Until$BackgroundJob$1;->this$0:Lcom/android/mipop/cropimage/Until$BackgroundJob;

    invoke-virtual {v0, v1}, Lcom/android/mipop/cropimage/MonitoredActivity;->removeLifeCycleListener(Lcom/android/mipop/cropimage/MonitoredActivity$LifeCycleListener;)V

    .line 378
    iget-object v0, p0, Lcom/android/mipop/cropimage/Until$BackgroundJob$1;->this$0:Lcom/android/mipop/cropimage/Until$BackgroundJob;

    # getter for: Lcom/android/mipop/cropimage/Until$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mipop/cropimage/Until$BackgroundJob;->access$100(Lcom/android/mipop/cropimage/Until$BackgroundJob;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/mipop/cropimage/Until$BackgroundJob$1;->this$0:Lcom/android/mipop/cropimage/Until$BackgroundJob;

    # getter for: Lcom/android/mipop/cropimage/Until$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mipop/cropimage/Until$BackgroundJob;->access$100(Lcom/android/mipop/cropimage/Until$BackgroundJob;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 380
    :cond_0
    return-void
.end method
