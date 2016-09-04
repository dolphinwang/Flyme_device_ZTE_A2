.class Lcom/zte/mifavor/widget/DatePickerZTE$2;
.super Ljava/lang/Object;
.source "DatePickerZTE.java"

# interfaces
.implements Landroid/widget/CalendarView$OnDateChangeListener;


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
    .line 229
    iput-object p1, p0, Lcom/zte/mifavor/widget/DatePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectedDayChange(Landroid/widget/CalendarView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/CalendarView;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "monthDay"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/DatePickerZTE;->setDate(III)V
    invoke-static {v0, p2, p3, p4}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$600(Lcom/zte/mifavor/widget/DatePickerZTE;III)V

    .line 232
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/DatePickerZTE;->updateSpinners()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$700(Lcom/zte/mifavor/widget/DatePickerZTE;)V

    .line 233
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerZTE$2;->this$0:Lcom/zte/mifavor/widget/DatePickerZTE;

    # invokes: Lcom/zte/mifavor/widget/DatePickerZTE;->notifyDateChanged()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/DatePickerZTE;->access$900(Lcom/zte/mifavor/widget/DatePickerZTE;)V

    .line 234
    return-void
.end method
