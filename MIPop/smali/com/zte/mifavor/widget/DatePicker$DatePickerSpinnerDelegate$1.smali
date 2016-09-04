.class Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate$1;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;-><init>(Lcom/zte/mifavor/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;)V
    .locals 0

    .prologue
    .line 603
    iput-object p1, p0, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 9
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/16 v8, 0xb

    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 605
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;

    # invokes: Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->updateInputState()V
    invoke-static {v1}, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->access$000(Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 606
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->access$200(Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->access$100(Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 608
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->mDaySpinner:Landroid/widget/NumberPicker;
    invoke-static {v1}, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->access$300(Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 609
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->access$200(Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 610
    .local v0, "maxDayOfMonth":I
    if-ne p2, v0, :cond_0

    if-ne p3, v4, :cond_0

    .line 611
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->access$200(Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 631
    .end local v0    # "maxDayOfMonth":I
    :goto_0
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->access$200(Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->access$200(Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v4}, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->access$200(Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    # invokes: Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->setDate(III)V
    invoke-static {v1, v2, v3, v4}, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->access$600(Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;III)V

    .line 633
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;

    # invokes: Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->updateSpinners()V
    invoke-static {v1}, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->access$700(Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 634
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;

    # invokes: Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->updateCalendarView()V
    invoke-static {v1}, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->access$800(Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 635
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;

    # invokes: Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->notifyDateChanged()V
    invoke-static {v1}, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->access$900(Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 636
    return-void

    .line 612
    .restart local v0    # "maxDayOfMonth":I
    :cond_0
    if-ne p2, v4, :cond_1

    if-ne p3, v0, :cond_1

    .line 613
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->access$200(Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 615
    :cond_1
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->access$200(Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    sub-int v2, p3, p2

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 617
    .end local v0    # "maxDayOfMonth":I
    :cond_2
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->mMonthSpinner:Landroid/widget/NumberPicker;
    invoke-static {v1}, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->access$400(Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_5

    .line 618
    if-ne p2, v8, :cond_3

    if-nez p3, :cond_3

    .line 619
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->access$200(Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v6, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 620
    :cond_3
    if-nez p2, :cond_4

    if-ne p3, v8, :cond_4

    .line 621
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->access$200(Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 623
    :cond_4
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->access$200(Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    sub-int v2, p3, p2

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 625
    :cond_5
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->mYearSpinner:Landroid/widget/NumberPicker;
    invoke-static {v1}, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->access$500(Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_6

    .line 626
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$0:Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;

    # getter for: Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->access$200(Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4, p3}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 628
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method
