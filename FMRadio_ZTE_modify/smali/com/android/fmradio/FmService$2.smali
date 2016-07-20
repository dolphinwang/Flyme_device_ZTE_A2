.class Lcom/android/fmradio/FmService$2;
.super Ljava/lang/Object;
.source "FmService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fmradio/FmService;->tuneStation(F)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/fmradio/FmService;


# direct methods
.method constructor <init>(Lcom/android/fmradio/FmService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/fmradio/FmService$2;->this$0:Lcom/android/fmradio/FmService;

    .line 1012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/fmradio/FmService$2;->this$0:Lcom/android/fmradio/FmService;

    invoke-virtual {v0}, Lcom/android/fmradio/FmService;->updatePlayingNotification()V

    .line 1016
    return-void
.end method
