.class Lcom/android/fmradio/FmService$3$1;
.super Ljava/lang/Object;
.source "FmService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fmradio/FmService$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/fmradio/FmService$3;


# direct methods
.method constructor <init>(Lcom/android/fmradio/FmService$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/fmradio/FmService$3$1;->this$1:Lcom/android/fmradio/FmService$3;

    .line 2098
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2101
    iget-object v0, p0, Lcom/android/fmradio/FmService$3$1;->this$1:Lcom/android/fmradio/FmService$3;

    # getter for: Lcom/android/fmradio/FmService$3;->this$0:Lcom/android/fmradio/FmService;
    invoke-static {v0}, Lcom/android/fmradio/FmService$3;->access$0(Lcom/android/fmradio/FmService$3;)Lcom/android/fmradio/FmService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/fmradio/FmService;->updatePlayingNotification()V

    .line 2102
    return-void
.end method
