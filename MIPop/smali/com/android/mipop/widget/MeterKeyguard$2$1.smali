.class Lcom/android/mipop/widget/MeterKeyguard$2$1;
.super Ljava/lang/Thread;
.source "MeterKeyguard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mipop/widget/MeterKeyguard$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mipop/widget/MeterKeyguard$2;


# direct methods
.method constructor <init>(Lcom/android/mipop/widget/MeterKeyguard$2;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/mipop/widget/MeterKeyguard$2$1;->this$1:Lcom/android/mipop/widget/MeterKeyguard$2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/mipop/widget/MeterKeyguard$2$1;->this$1:Lcom/android/mipop/widget/MeterKeyguard$2;

    iget-object v0, v0, Lcom/android/mipop/widget/MeterKeyguard$2;->this$0:Lcom/android/mipop/widget/MeterKeyguard;

    # invokes: Lcom/android/mipop/widget/MeterKeyguard;->startAction()V
    invoke-static {v0}, Lcom/android/mipop/widget/MeterKeyguard;->access$000(Lcom/android/mipop/widget/MeterKeyguard;)V

    .line 76
    return-void
.end method
