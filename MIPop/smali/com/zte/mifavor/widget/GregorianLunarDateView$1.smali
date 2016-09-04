.class Lcom/zte/mifavor/widget/GregorianLunarDateView$1;
.super Ljava/lang/Object;
.source "GregorianLunarDateView.java"

# interfaces
.implements Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/GregorianLunarDateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/GregorianLunarDateView;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcom/zte/mifavor/widget/NumberPickerZTE;II)V
    .locals 7
    .param p1, "picker"    # Lcom/zte/mifavor/widget/NumberPickerZTE;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    # invokes: Lcom/zte/mifavor/widget/GregorianLunarDateView;->updateInputState()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$000(Lcom/zte/mifavor/widget/GregorianLunarDateView;)V

    .line 126
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    # getter for: Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;
    invoke-static {v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$100(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    # getter for: Lcom/zte/mifavor/widget/GregorianLunarDateView;->mIsGregorian:Z
    invoke-static {v2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$200(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Z

    move-result v2

    # invokes: Lcom/zte/mifavor/widget/GregorianLunarDateView;->passiveUpdateMonthAndDay(IIZ)V
    invoke-static {v0, p2, p3, v2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$300(Lcom/zte/mifavor/widget/GregorianLunarDateView;IIZ)V

    .line 136
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    # getter for: Lcom/zte/mifavor/widget/GregorianLunarDateView;->mIsGregorian:Z
    invoke-static {v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$200(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    new-instance v6, Lcom/zte/mifavor/widget/ChineseCalendar;

    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    # getter for: Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$700(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Ljava/util/Calendar;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/zte/mifavor/widget/ChineseCalendar;-><init>(Ljava/util/Calendar;)V

    .line 138
    .local v6, "ccc":Lcom/zte/mifavor/widget/ChineseCalendar;
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    # getter for: Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;
    invoke-static {v2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$100(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    # getter for: Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;
    invoke-static {v3}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$400(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v3

    iget-object v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    # getter for: Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;
    invoke-static {v4}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$600(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v4

    invoke-virtual {v6, v2, v3, v4}, Lcom/zte/mifavor/widget/ChineseCalendar;->computeGregorianFields(III)Ljava/util/Calendar;

    move-result-object v2

    # setter for: Lcom/zte/mifavor/widget/GregorianLunarDateView;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v0, v2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$702(Lcom/zte/mifavor/widget/GregorianLunarDateView;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 141
    .end local v6    # "ccc":Lcom/zte/mifavor/widget/ChineseCalendar;
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    # invokes: Lcom/zte/mifavor/widget/GregorianLunarDateView;->notifyDateChanged()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$800(Lcom/zte/mifavor/widget/GregorianLunarDateView;)V

    .line 142
    return-void

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    # getter for: Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_month:Lcom/zte/mifavor/widget/NumberPickerZTE;
    invoke-static {v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$400(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    # getter for: Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_year:Lcom/zte/mifavor/widget/NumberPickerZTE;
    invoke-static {v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$100(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/NumberPickerZTE;->getValue()I

    move-result v1

    .line 130
    .local v1, "fixYear":I
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    # getter for: Lcom/zte/mifavor/widget/GregorianLunarDateView;->mIsGregorian:Z
    invoke-static {v2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$200(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Z

    move-result v5

    move v2, v1

    move v3, p2

    move v4, p3

    # invokes: Lcom/zte/mifavor/widget/GregorianLunarDateView;->passiveUpdateDay(IIIIZ)V
    invoke-static/range {v0 .. v5}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$500(Lcom/zte/mifavor/widget/GregorianLunarDateView;IIIIZ)V

    goto :goto_0

    .line 131
    .end local v1    # "fixYear":I
    :cond_3
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateView$1;->this$0:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    # getter for: Lcom/zte/mifavor/widget/GregorianLunarDateView;->picker_day:Lcom/zte/mifavor/widget/NumberPickerZTE;
    invoke-static {v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->access$600(Lcom/zte/mifavor/widget/GregorianLunarDateView;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
