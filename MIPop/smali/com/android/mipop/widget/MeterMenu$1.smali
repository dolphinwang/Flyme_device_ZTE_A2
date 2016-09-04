.class Lcom/android/mipop/widget/MeterMenu$1;
.super Ljava/lang/Thread;
.source "MeterMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mipop/widget/MeterMenu;->Click()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/widget/MeterMenu;


# direct methods
.method constructor <init>(Lcom/android/mipop/widget/MeterMenu;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/mipop/widget/MeterMenu$1;->this$0:Lcom/android/mipop/widget/MeterMenu;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/mipop/widget/MeterMenu$1;->this$0:Lcom/android/mipop/widget/MeterMenu;

    # invokes: Lcom/android/mipop/widget/MeterMenu;->startAction()V
    invoke-static {v0}, Lcom/android/mipop/widget/MeterMenu;->access$000(Lcom/android/mipop/widget/MeterMenu;)V

    .line 58
    return-void
.end method
