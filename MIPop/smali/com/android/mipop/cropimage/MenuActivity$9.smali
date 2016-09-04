.class Lcom/android/mipop/cropimage/MenuActivity$9;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/cropimage/MenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/cropimage/MenuActivity;


# direct methods
.method constructor <init>(Lcom/android/mipop/cropimage/MenuActivity;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/mipop/cropimage/MenuActivity$9;->this$0:Lcom/android/mipop/cropimage/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/mipop/cropimage/MenuActivity$9;->this$0:Lcom/android/mipop/cropimage/MenuActivity;

    # invokes: Lcom/android/mipop/cropimage/MenuActivity;->timeOut()V
    invoke-static {v0}, Lcom/android/mipop/cropimage/MenuActivity;->access$000(Lcom/android/mipop/cropimage/MenuActivity;)V

    .line 239
    return-void
.end method
