.class Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate$2;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/CalendarView$OnDateChangeListener;


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
    .line 643
    iput-object p1, p0, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate$2;->this$0:Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;

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
    .line 645
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate$2;->this$0:Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;

    # invokes: Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->setDate(III)V
    invoke-static {v0, p2, p3, p4}, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->access$600(Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;III)V

    .line 646
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate$2;->this$0:Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;

    # invokes: Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->updateSpinners()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->access$700(Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 647
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate$2;->this$0:Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;

    # invokes: Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->notifyDateChanged()V
    invoke-static {v0}, Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;->access$900(Lcom/zte/mifavor/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 648
    return-void
.end method
