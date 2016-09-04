.class Lcom/android/mipop/widget/MeterBack$4$1;
.super Ljava/lang/Thread;
.source "MeterBack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mipop/widget/MeterBack$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mipop/widget/MeterBack$4;


# direct methods
.method constructor <init>(Lcom/android/mipop/widget/MeterBack$4;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/mipop/widget/MeterBack$4$1;->this$1:Lcom/android/mipop/widget/MeterBack$4;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/mipop/widget/MeterBack$4$1;->this$1:Lcom/android/mipop/widget/MeterBack$4;

    iget-object v0, v0, Lcom/android/mipop/widget/MeterBack$4;->this$0:Lcom/android/mipop/widget/MeterBack;

    # invokes: Lcom/android/mipop/widget/MeterBack;->startAction()V
    invoke-static {v0}, Lcom/android/mipop/widget/MeterBack;->access$100(Lcom/android/mipop/widget/MeterBack;)V

    .line 155
    return-void
.end method
