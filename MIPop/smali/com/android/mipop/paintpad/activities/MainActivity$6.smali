.class Lcom/android/mipop/paintpad/activities/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mipop/paintpad/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mipop/paintpad/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/android/mipop/paintpad/activities/MainActivity;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/mipop/paintpad/activities/MainActivity$6;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 506
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f060121

    if-eq v0, v1, :cond_0

    .line 507
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$6;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # invokes: Lcom/android/mipop/paintpad/activities/MainActivity;->hideMenu()V
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$000(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    .line 509
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 545
    :goto_0
    return-void

    .line 511
    :sswitch_0
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$6;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # invokes: Lcom/android/mipop/paintpad/activities/MainActivity;->quit()V
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1200(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    goto :goto_0

    .line 514
    :sswitch_1
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$6;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->paintPad:Lcom/android/mipop/paintpad/view/PaintPad;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1300(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PaintPad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/view/PaintPad;->saveBitmap()V

    .line 515
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$6;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/mipop/paintpad/activities/MainActivity;->isChanged:Z
    invoke-static {v0, v1}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$302(Lcom/android/mipop/paintpad/activities/MainActivity;Z)Z

    goto :goto_0

    .line 520
    :sswitch_2
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$6;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->paintPad:Lcom/android/mipop/paintpad/view/PaintPad;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1300(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PaintPad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/view/PaintPad;->redo()I

    .line 521
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$6;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # invokes: Lcom/android/mipop/paintpad/activities/MainActivity;->switchRedoAndUndo()V
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1400(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    .line 522
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$6;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # setter for: Lcom/android/mipop/paintpad/activities/MainActivity;->isChanged:Z
    invoke-static {v0, v2}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$302(Lcom/android/mipop/paintpad/activities/MainActivity;Z)Z

    goto :goto_0

    .line 525
    :sswitch_3
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$6;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->paintPad:Lcom/android/mipop/paintpad/view/PaintPad;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1300(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PaintPad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/view/PaintPad;->undo()I

    .line 526
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$6;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # invokes: Lcom/android/mipop/paintpad/activities/MainActivity;->switchRedoAndUndo()V
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1400(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    .line 527
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$6;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # setter for: Lcom/android/mipop/paintpad/activities/MainActivity;->isChanged:Z
    invoke-static {v0, v2}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$302(Lcom/android/mipop/paintpad/activities/MainActivity;Z)Z

    goto :goto_0

    .line 530
    :sswitch_4
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$6;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->paintPad:Lcom/android/mipop/paintpad/view/PaintPad;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1300(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PaintPad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/view/PaintPad;->share()V

    goto :goto_0

    .line 535
    :sswitch_5
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$6;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # getter for: Lcom/android/mipop/paintpad/activities/MainActivity;->paintPad:Lcom/android/mipop/paintpad/view/PaintPad;
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1300(Lcom/android/mipop/paintpad/activities/MainActivity;)Lcom/android/mipop/paintpad/view/PaintPad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mipop/paintpad/view/PaintPad;->clearCanvas()V

    .line 536
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$6;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # setter for: Lcom/android/mipop/paintpad/activities/MainActivity;->isChanged:Z
    invoke-static {v0, v2}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$302(Lcom/android/mipop/paintpad/activities/MainActivity;Z)Z

    .line 537
    iget-object v0, p0, Lcom/android/mipop/paintpad/activities/MainActivity$6;->this$0:Lcom/android/mipop/paintpad/activities/MainActivity;

    # invokes: Lcom/android/mipop/paintpad/activities/MainActivity;->switchRedoAndUndo()V
    invoke-static {v0}, Lcom/android/mipop/paintpad/activities/MainActivity;->access$1400(Lcom/android/mipop/paintpad/activities/MainActivity;)V

    goto :goto_0

    .line 509
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f060111 -> :sswitch_0
        0x7f060112 -> :sswitch_1
        0x7f060113 -> :sswitch_4
        0x7f060114 -> :sswitch_3
        0x7f060115 -> :sswitch_2
        0x7f060121 -> :sswitch_5
    .end sparse-switch
.end method
