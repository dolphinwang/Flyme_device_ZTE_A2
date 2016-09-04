.class Lcom/android/mipop/api/MyApplication$1;
.super Landroid/database/ContentObserver;
.source "MyApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/api/MyApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/api/MyApplication;


# direct methods
.method constructor <init>(Lcom/android/mipop/api/MyApplication;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/mipop/api/MyApplication$1;->this$0:Lcom/android/mipop/api/MyApplication;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mipop/api/MyApplication$1;->this$0:Lcom/android/mipop/api/MyApplication;

    const-string v1, "mMipopObserver onChange=enter"

    # invokes: Lcom/android/mipop/api/MyApplication;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/mipop/api/MyApplication;->access$000(Lcom/android/mipop/api/MyApplication;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/android/mipop/api/MyApplication$1;->this$0:Lcom/android/mipop/api/MyApplication;

    # invokes: Lcom/android/mipop/api/MyApplication;->updateMipopStatusByDb()V
    invoke-static {v0}, Lcom/android/mipop/api/MyApplication;->access$100(Lcom/android/mipop/api/MyApplication;)V

    .line 118
    iget-object v0, p0, Lcom/android/mipop/api/MyApplication$1;->this$0:Lcom/android/mipop/api/MyApplication;

    # invokes: Lcom/android/mipop/api/MyApplication;->updateSmartRemindDialog()V
    invoke-static {v0}, Lcom/android/mipop/api/MyApplication;->access$200(Lcom/android/mipop/api/MyApplication;)V

    .line 119
    return-void
.end method
