.class Lcom/zte/miravision/MiravisionActivity$1;
.super Ljava/lang/Object;
.source "MiravisionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/miravision/MiravisionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/miravision/MiravisionActivity;


# direct methods
.method constructor <init>(Lcom/zte/miravision/MiravisionActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/miravision/MiravisionActivity$1;->this$0:Lcom/zte/miravision/MiravisionActivity;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 342
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 372
    :goto_0
    :pswitch_0
    return-void

    .line 344
    :pswitch_1
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$1;->this$0:Lcom/zte/miravision/MiravisionActivity;

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity$1;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->mStandardBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;
    invoke-static {v1}, Lcom/zte/miravision/MiravisionActivity;->access$0(Lcom/zte/miravision/MiravisionActivity;)Lcom/zte/mifavor/widget/RadioButtonZTE;

    move-result-object v1

    # invokes: Lcom/zte/miravision/MiravisionActivity;->updateRadioButtons(Lcom/zte/mifavor/widget/RadioButtonZTE;)V
    invoke-static {v0, v1}, Lcom/zte/miravision/MiravisionActivity;->access$1(Lcom/zte/miravision/MiravisionActivity;Lcom/zte/mifavor/widget/RadioButtonZTE;)V

    goto :goto_0

    .line 348
    :pswitch_2
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$1;->this$0:Lcom/zte/miravision/MiravisionActivity;

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity$1;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->mHeibaiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;
    invoke-static {v1}, Lcom/zte/miravision/MiravisionActivity;->access$2(Lcom/zte/miravision/MiravisionActivity;)Lcom/zte/mifavor/widget/RadioButtonZTE;

    move-result-object v1

    # invokes: Lcom/zte/miravision/MiravisionActivity;->updateRadioButtons(Lcom/zte/mifavor/widget/RadioButtonZTE;)V
    invoke-static {v0, v1}, Lcom/zte/miravision/MiravisionActivity;->access$1(Lcom/zte/miravision/MiravisionActivity;Lcom/zte/mifavor/widget/RadioButtonZTE;)V

    goto :goto_0

    .line 352
    :pswitch_3
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$1;->this$0:Lcom/zte/miravision/MiravisionActivity;

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity$1;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->mFanseBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;
    invoke-static {v1}, Lcom/zte/miravision/MiravisionActivity;->access$3(Lcom/zte/miravision/MiravisionActivity;)Lcom/zte/mifavor/widget/RadioButtonZTE;

    move-result-object v1

    # invokes: Lcom/zte/miravision/MiravisionActivity;->updateRadioButtons(Lcom/zte/mifavor/widget/RadioButtonZTE;)V
    invoke-static {v0, v1}, Lcom/zte/miravision/MiravisionActivity;->access$1(Lcom/zte/miravision/MiravisionActivity;Lcom/zte/mifavor/widget/RadioButtonZTE;)V

    goto :goto_0

    .line 356
    :pswitch_4
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$1;->this$0:Lcom/zte/miravision/MiravisionActivity;

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity$1;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->mXianyanBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;
    invoke-static {v1}, Lcom/zte/miravision/MiravisionActivity;->access$4(Lcom/zte/miravision/MiravisionActivity;)Lcom/zte/mifavor/widget/RadioButtonZTE;

    move-result-object v1

    # invokes: Lcom/zte/miravision/MiravisionActivity;->updateRadioButtons(Lcom/zte/mifavor/widget/RadioButtonZTE;)V
    invoke-static {v0, v1}, Lcom/zte/miravision/MiravisionActivity;->access$1(Lcom/zte/miravision/MiravisionActivity;Lcom/zte/mifavor/widget/RadioButtonZTE;)V

    goto :goto_0

    .line 360
    :pswitch_5
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$1;->this$0:Lcom/zte/miravision/MiravisionActivity;

    iget-object v1, p0, Lcom/zte/miravision/MiravisionActivity$1;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # getter for: Lcom/zte/miravision/MiravisionActivity;->mZidingyiBtn:Lcom/zte/mifavor/widget/RadioButtonZTE;
    invoke-static {v1}, Lcom/zte/miravision/MiravisionActivity;->access$5(Lcom/zte/miravision/MiravisionActivity;)Lcom/zte/mifavor/widget/RadioButtonZTE;

    move-result-object v1

    # invokes: Lcom/zte/miravision/MiravisionActivity;->updateRadioButtons(Lcom/zte/mifavor/widget/RadioButtonZTE;)V
    invoke-static {v0, v1}, Lcom/zte/miravision/MiravisionActivity;->access$1(Lcom/zte/miravision/MiravisionActivity;Lcom/zte/mifavor/widget/RadioButtonZTE;)V

    goto :goto_0

    .line 365
    :pswitch_6
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$1;->this$0:Lcom/zte/miravision/MiravisionActivity;

    # invokes: Lcom/zte/miravision/MiravisionActivity;->enterUserDefFade()V
    invoke-static {v0}, Lcom/zte/miravision/MiravisionActivity;->access$6(Lcom/zte/miravision/MiravisionActivity;)V

    .line 366
    iget-object v0, p0, Lcom/zte/miravision/MiravisionActivity$1;->this$0:Lcom/zte/miravision/MiravisionActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zte/miravision/MiravisionActivity;->access$7(Lcom/zte/miravision/MiravisionActivity;Z)V

    goto :goto_0

    .line 342
    :pswitch_data_0
    .packed-switch 0x7f060061
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
