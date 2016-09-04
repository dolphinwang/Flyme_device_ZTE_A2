.class public Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;
.super Lcom/zte/mifavor/widget/AlertDialog;
.source "GregorianLunarDateViewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/zte/mifavor/widget/GregorianLunarDateView$OnDateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final ISGREGORIAN:Ljava/lang/String; = "isgregorian"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallBack:Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog$OnDateSetListener;

.field private final mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

.field private mTitleNeedsUpdate:Z

.field private tvWeekday:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/zte/mifavor/widget/GregorianLunarDateViewDialog$OnDateSetListener;III)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .prologue
    const/4 v5, 0x1

    .line 120
    invoke-static {p1, p2}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/zte/mifavor/widget/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 60
    iput-boolean v5, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mTitleNeedsUpdate:Z

    .line 122
    iput-object p3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCallBack:Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog$OnDateSetListener;

    .line 124
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    .line 126
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 127
    .local v1, "themeContext":Landroid/content/Context;
    sget v3, Lcom/zte/extres/R$string;->date_picker_dialog_title:I

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->setTitle(I)V

    .line 128
    const/4 v3, -0x1

    const v4, 0x104000a

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 129
    const/4 v3, -0x2

    const/high16 v4, 0x1040000

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 132
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->setIcon(I)V

    .line 133
    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 135
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/zte/extres/R$layout;->gregorian_lunar_date_view_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 136
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->setView(Landroid/view/View;)V

    .line 137
    sget v3, Lcom/zte/extres/R$id;->datePicker:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zte/mifavor/widget/GregorianLunarDateView;

    iput-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    .line 139
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v5, p4}, Ljava/util/Calendar;->set(II)V

    .line 140
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, p5}, Ljava/util/Calendar;->set(II)V

    .line 141
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, p6}, Ljava/util/Calendar;->set(II)V

    .line 143
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    iget-object v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v3, v4, v5}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->initConfigs(Ljava/util/Calendar;Z)V

    .line 145
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v3, p4, p5, p6, p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->init(IIILcom/zte/mifavor/widget/GregorianLunarDateView$OnDateChangedListener;)V

    .line 146
    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v3, p4, p5, p6}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->updateCurrentDate(III)V

    .line 147
    sget v3, Lcom/zte/extres/R$id;->week:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->tvWeekday:Landroid/widget/TextView;

    .line 148
    invoke-direct {p0, p4, p5, p6}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->updateTitle(III)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog$OnDateSetListener;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I

    .prologue
    .line 89
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;-><init>(Landroid/content/Context;ILcom/zte/mifavor/widget/GregorianLunarDateViewDialog$OnDateSetListener;III)V

    .line 90
    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    .line 102
    sget v0, Lcom/zte/extres/R$style;->Theme_ZTE_Light_Dialog:I

    return v0
.end method

.method private tryNotifyDateSet()V
    .locals 5

    .prologue
    .line 194
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCallBack:Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->clearFocus()V

    .line 196
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCallBack:Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog$OnDateSetListener;

    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getYear()I

    move-result v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v3}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v4}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog$OnDateSetListener;->onDateSet(Lcom/zte/mifavor/widget/GregorianLunarDateView;III)V

    .line 199
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

    .line 235
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 236
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v4, p2}, Ljava/util/Calendar;->set(II)V

    .line 237
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 239
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->tvWeekday:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    return-void
.end method


# virtual methods
.method public getDatePicker()Lcom/zte/mifavor/widget/GregorianLunarDateView;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 153
    packed-switch p2, :pswitch_data_0

    .line 158
    :goto_0
    return-void

    .line 155
    :pswitch_0
    invoke-direct {p0}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->tryNotifyDateSet()V

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDateChanged(Lcom/zte/mifavor/widget/GregorianLunarDateView;III)V
    .locals 3
    .param p1, "view"    # Lcom/zte/mifavor/widget/GregorianLunarDateView;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 162
    const-string v0, "wwee"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dd onDateChanged   year:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  month:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   day:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 165
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 166
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 168
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v0, p2, p3, p4, p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->init(IIILcom/zte/mifavor/widget/GregorianLunarDateView$OnDateChangedListener;)V

    .line 169
    invoke-direct {p0, p2, p3, p4}, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->updateTitle(III)V

    .line 170
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 257
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 258
    const-string v4, "year"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 259
    .local v3, "year":I
    const-string v4, "month"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 260
    .local v2, "month":I
    const-string v4, "day"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 261
    .local v0, "day":I
    const-string v4, "isgregorian"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 262
    .local v1, "isGregorian":Z
    iget-object v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 263
    iget-object v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 264
    iget-object v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 265
    iget-object v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    iget-object v5, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v4, v5, v1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->initConfigs(Ljava/util/Calendar;Z)V

    .line 266
    iget-object v4, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v4, v3, v2, v0, p0}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->init(IIILcom/zte/mifavor/widget/GregorianLunarDateView$OnDateChangedListener;)V

    .line 267
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 247
    invoke-super {p0}, Lcom/zte/mifavor/widget/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 248
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "year"

    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    const-string v1, "month"

    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    const-string v1, "day"

    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    const-string v1, "isgregorian"

    iget-object v2, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getIsGregorian()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 252
    return-object v0
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setColor(I)V

    .line 204
    return-void
.end method

.method public setDisplayMonthsLunar(I)V
    .locals 1
    .param p1, "month"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setDisplayMonthsLunar(I)V

    .line 232
    return-void
.end method

.method public setGregorian(Z)V
    .locals 1
    .param p1, "isGregorian"    # Z

    .prologue
    .line 227
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setGregorian(Z)V

    .line 228
    return-void
.end method

.method public setMaxYear(I)V
    .locals 2
    .param p1, "year"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setMaxYear(I)V

    .line 217
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setForceUpdate(Z)V

    .line 218
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getIsGregorian()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->updateView(Z)V

    .line 219
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setForceUpdate(Z)V

    .line 220
    return-void
.end method

.method public setMinYear(I)V
    .locals 2
    .param p1, "year"    # I

    .prologue
    .line 208
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setMinYear(I)V

    .line 209
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setForceUpdate(Z)V

    .line 210
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    iget-object v1, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->getIsGregorian()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->updateView(Z)V

    .line 211
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setForceUpdate(Z)V

    .line 212
    return-void
.end method

.method public setSwitchShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 223
    iget-object v0, p0, Lcom/zte/mifavor/widget/GregorianLunarDateViewDialog;->mDatePicker:Lcom/zte/mifavor/widget/GregorianLunarDateView;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/GregorianLunarDateView;->setSwitchShown(Z)V

    .line 224
    return-void
.end method
