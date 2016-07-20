.class Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface$1;
.super Ljava/lang/Thread;
.source "AgpsDebugInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;-><init>(Lcom/mediatek/lbs/em2/utils/AgpsDebugListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;


# direct methods
.method constructor <init>(Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface$1;->this$0:Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface$1;->this$0:Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;

    invoke-virtual {v0}, Lcom/mediatek/lbs/em2/utils/AgpsDebugInterface;->readThread()V

    .line 48
    return-void
.end method
