.class Lcom/zte/mifavor/widget/TimePickerZTE$3;
.super Ljava/lang/Object;
.source "TimePickerZTE.java"

# interfaces
.implements Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/TimePickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/TimePickerZTE;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/TimePickerZTE;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/zte/mifavor/widget/TimePickerZTE$3;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V
    .locals 3
    .param p1, "spinner"    # Lcom/zte/mifavor/widget/NumberPickerZTE;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 211
    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE$3;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/TimePickerZTE;->updateInputState()V
    invoke-static {v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$000(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    .line 212
    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE$3;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;
    invoke-static {v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$400(Lcom/zte/mifavor/widget/TimePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMinValue()I

    move-result v1

    .line 213
    .local v1, "minValue":I
    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE$3;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/TimePickerZTE;->mMinuteSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;
    invoke-static {v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$400(Lcom/zte/mifavor/widget/TimePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getMaxValue()I

    move-result v0

    .line 231
    .local v0, "maxValue":I
    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerZTE$3;->this$0:Lcom/zte/mifavor/widget/TimePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/TimePickerZTE;->onTimeChanged()V
    invoke-static {v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->access$300(Lcom/zte/mifavor/widget/TimePickerZTE;)V

    .line 232
    return-void
.end method
