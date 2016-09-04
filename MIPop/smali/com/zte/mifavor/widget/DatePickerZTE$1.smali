.class Lcom/zte/mifavor/widget/DatePickerZTE$1;
.super Ljava/lang/Object;
.source "DatePickerZTE.java"

# interfaces
.implements Lcom/zte/mifavor/widget/NumberPickerZTE$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/widget/DatePickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/widget/DatePickerZTE;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/widget/DatePickerZTE;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

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
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 191
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/DatePickerZTE;->updateInputState()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$000(Lcom/zte/mifavor/widget/DatePickerZTE;)V

    .line 192
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DatePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v0}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$200(Lcom/zte/mifavor/widget/DatePickerZTE;)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DatePickerZTE;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$100(Lcom/zte/mifavor/widget/DatePickerZTE;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 194
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DatePickerZTE;->mDaySpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;
    invoke-static {v0}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$300(Lcom/zte/mifavor/widget/DatePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DatePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v0}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$200(Lcom/zte/mifavor/widget/DatePickerZTE;)Ljava/util/Calendar;

    move-result-object v0

    sub-int v1, p3, p2

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->add(II)V

    .line 217
    :goto_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DatePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$200(Lcom/zte/mifavor/widget/DatePickerZTE;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DatePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$200(Lcom/zte/mifavor/widget/DatePickerZTE;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DatePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$200(Lcom/zte/mifavor/widget/DatePickerZTE;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    # invokes: Lcom/zte/mifavor/widget/DatePickerZTE;->setDate(III)V
    invoke-static {v0, v1, v2, v3}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$600(Lcom/zte/mifavor/widget/DatePickerZTE;III)V

    .line 219
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/DatePickerZTE;->updateSpinners()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$700(Lcom/zte/mifavor/widget/DatePickerZTE;)V

    .line 220
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/DatePickerZTE;->updateCalendarView()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$800(Lcom/zte/mifavor/widget/DatePickerZTE;)V

    .line 221
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/DatePickerZTE;->notifyDateChanged()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$900(Lcom/zte/mifavor/widget/DatePickerZTE;)V

    .line 222
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DatePickerZTE;->mMonthSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;
    invoke-static {v0}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$400(Lcom/zte/mifavor/widget/DatePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DatePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v0}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$200(Lcom/zte/mifavor/widget/DatePickerZTE;)Ljava/util/Calendar;

    move-result-object v0

    sub-int v1, p3, p2

    invoke-virtual {v0, v5, v1}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DatePickerZTE;->mYearSpinner:Lcom/zte/mifavor/widget/NumberPickerZTE;
    invoke-static {v0}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$500(Lcom/zte/mifavor/widget/DatePickerZTE;)Lcom/zte/mifavor/widget/NumberPickerZTE;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE$1;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    # getter for: Lcom/zte/mifavor/widget/DatePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v0}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$200(Lcom/zte/mifavor/widget/DatePickerZTE;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v4, p3}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 214
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
