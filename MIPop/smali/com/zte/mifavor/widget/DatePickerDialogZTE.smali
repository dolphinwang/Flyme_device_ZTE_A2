.class public Lcom/zte/mifavor/widget/DatePickerDialogZTE;
.super Lcom/zte/mifavor/widget/AlertDialog;
.source "DatePickerDialogZTE.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/zte/mifavor/widget/DatePickerZTE$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/DatePickerDialogZTE$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallBack:Lcom/zte/mifavor/widget/DatePickerDialogZTE$OnDateSetListener;

.field private final mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

.field private mTitleNeedsUpdate:Z

.field private tvWeekday:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/zte/mifavor/widget/DatePickerDialogZTE$OnDateSetListener;III)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/zte/mifavor/widget/DatePickerDialogZTE$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .prologue
    .line 114
    invoke-static {p1, p2}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/zte/mifavor/widget/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 54
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mTitleNeedsUpdate:Z

    .line 116
    iput-object p3, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mCallBack:Lcom/zte/mifavor/widget/DatePickerDialogZTE$OnDateSetListener;

    .line 118
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mCalendar:Ljava/util/Calendar;

    .line 120
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 121
    .local v1, "themeContext":Landroid/content/Context;
    sget v3, Lcom/zte/extres/R$string;->date_picker_dialog_title:I

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->setTitle(I)V

    .line 122
    const/4 v3, -0x1

    const v4, 0x104000a

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 123
    const/4 v3, -0x2

    const/high16 v4, 0x1040000

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 126
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->setIcon(I)V

    .line 128
    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 130
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/zte/extres/R$layout;->date_picker_dialog_zte:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 131
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->setView(Landroid/view/View;)V

    .line 132
    sget v3, Lcom/zte/extres/R$id;->datePicker:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zte/mifavor/widget/DatePickerZTE;

    iput-object v3, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    .line 133
    iget-object v3, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-virtual {v3, p4, p5, p6, p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->init(IIILcom/zte/mifavor/widget/DatePickerZTE$OnDateChangedListener;)V

    .line 134
    sget v3, Lcom/zte/extres/R$id;->week:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->tvWeekday:Landroid/widget/TextView;

    .line 135
    invoke-direct {p0, p4, p5, p6}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->updateTitle(III)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/zte/mifavor/widget/DatePickerDialogZTE$OnDateSetListener;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/zte/mifavor/widget/DatePickerDialogZTE$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I

    .prologue
    .line 83
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;-><init>(Landroid/content/Context;ILcom/zte/mifavor/widget/DatePickerDialogZTE$OnDateSetListener;III)V

    .line 84
    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    .line 96
    sget v0, Lcom/zte/extres/R$style;->Theme_ZTE_Light_Dialog:I

    return v0
.end method

.method private tryNotifyDateSet()V
    .locals 5

    .prologue
    .line 173
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mCallBack:Lcom/zte/mifavor/widget/DatePickerDialogZTE$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/DatePickerZTE;->clearFocus()V

    .line 175
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mCallBack:Lcom/zte/mifavor/widget/DatePickerDialogZTE$OnDateSetListener;

    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/DatePickerZTE;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-virtual {v3}, Lcom/zte/mifavor/widget/DatePickerZTE;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-virtual {v4}, Lcom/zte/mifavor/widget/DatePickerZTE;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/zte/mifavor/widget/DatePickerDialogZTE$OnDateSetListener;->onDateSet(Lcom/zte/mifavor/widget/DatePickerZTE;III)V

    .line 178
    :cond_0
    return-void
.end method

.method private updateTitle(III)V
    .locals 5
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/4 v4, 0x2

    .line 212
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 213
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v4, p2}, Ljava/util/Calendar;->set(II)V

    .line 214
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 215
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->tvWeekday:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    return-void
.end method


# virtual methods
.method public getDatePicker()Lcom/zte/mifavor/widget/DatePickerZTE;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 139
    packed-switch p2, :pswitch_data_0

    .line 144
    :goto_0
    return-void

    .line 141
    :pswitch_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->tryNotifyDateSet()V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDateChanged(Lcom/zte/mifavor/widget/DatePickerZTE;III)V
    .locals 1
    .param p1, "view"    # Lcom/zte/mifavor/widget/DatePickerZTE;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-virtual {v0, p2, p3, p4, p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->init(IIILcom/zte/mifavor/widget/DatePickerZTE$OnDateChangedListener;)V

    .line 149
    invoke-direct {p0, p2, p3, p4}, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->updateTitle(III)V

    .line 150
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 233
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 234
    const-string v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 235
    .local v2, "year":I
    const-string v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 236
    .local v1, "month":I
    const-string v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 237
    .local v0, "day":I
    iget-object v3, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-virtual {v3, v2, v1, v0, p0}, Lcom/zte/mifavor/widget/DatePickerZTE;->init(IIILcom/zte/mifavor/widget/DatePickerZTE$OnDateChangedListener;)V

    .line 238
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 224
    invoke-super {p0}, Lcom/zte/mifavor/widget/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 225
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "year"

    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/DatePickerZTE;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 226
    const-string v1, "month"

    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/DatePickerZTE;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    const-string v1, "day"

    iget-object v2, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/DatePickerZTE;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 183
    invoke-super {p0}, Lcom/zte/mifavor/widget/AlertDialog;->onStop()V

    .line 184
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/DatePickerZTE;->setColor(I)V

    .line 189
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePickerDialogZTE;->mDatePicker:Lcom/zte/mifavor/widget/DatePickerZTE;

    invoke-virtual {v0, p1, p2, p3}, Lcom/zte/mifavor/widget/DatePickerZTE;->updateDate(III)V

    .line 170
    return-void
.end method
