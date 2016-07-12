.class Lcom/android/internal/telephony/dataconnection/DcTracker$FdnChangeObserver;
.super Landroid/database/ContentObserver;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FdnChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 1

    .prologue
    .line 2484
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$FdnChangeObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 2485
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DcTracker;->mWorkerHandler:Landroid/os/Handler;

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2486
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 2490
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$FdnChangeObserver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTracker;->onFdnChanged()V
    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$400(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 2491
    return-void
.end method
