.class public Lcom/zte/mifavor/widget/TimePickerDialogZTE;
.super Lcom/zte/mifavor/widget/AlertDialog;
.source "TimePickerDialogZTE.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/widget/TimePickerDialogZTE$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"


# instance fields
.field private final mInitialHourOfDay:I

.field private final mInitialMinute:I

.field private final mIs24HourView:Z

.field private final mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

.field private final mTimeSetCallback:Lcom/zte/mifavor/widget/TimePickerDialogZTE$OnTimeSetListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/zte/mifavor/widget/TimePickerDialogZTE$OnTimeSetListener;IIZ)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcom/zte/mifavor/widget/TimePickerDialogZTE$OnTimeSetListener;
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "is24HourView"    # Z

    .prologue
    .line 103
    invoke-static {p1, p2}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/zte/mifavor/widget/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 105
    iput-object p3, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimeSetCallback:Lcom/zte/mifavor/widget/TimePickerDialogZTE$OnTimeSetListener;

    .line 106
    iput p4, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mInitialHourOfDay:I

    .line 107
    iput p5, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mInitialMinute:I

    .line 108
    iput-boolean p6, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mIs24HourView:Z

    .line 110
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 111
    .local v1, "themeContext":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 112
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/zte/extres/R$layout;->time_picker_dialog_zte:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 113
    .local v2, "view":Landroid/view/View;
    sget v3, Lcom/zte/extres/R$string;->time_picker_dialog_title:I

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->setTitle(I)V

    .line 114
    invoke-virtual {p0, v2}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->setView(Landroid/view/View;)V

    .line 115
    const/4 v3, -0x1

    const v4, 0x104000a

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 116
    const/4 v3, -0x2

    const/high16 v4, 0x1040000

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 117
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->setButtonPanelLayoutHint(I)V

    .line 120
    sget v3, Lcom/zte/extres/R$id;->timePicker:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/zte/mifavor/widget/TimePickerZTE;

    iput-object v3, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    .line 121
    iget-object v3, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    iget-boolean v4, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mIs24HourView:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/mifavor/widget/TimePickerZTE;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 122
    iget-object v3, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    iget v4, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mInitialHourOfDay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentHour(Ljava/lang/Integer;)V

    .line 123
    iget-object v3, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    iget v4, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mInitialMinute:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 124
    iget-object v3, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-virtual {v3, p0}, Lcom/zte/mifavor/widget/TimePickerZTE;->setOnTimeChangedListener(Lcom/zte/mifavor/widget/TimePickerZTE$OnTimeChangedListener;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/zte/mifavor/widget/TimePickerDialogZTE$OnTimeSetListener;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/zte/mifavor/widget/TimePickerDialogZTE$OnTimeSetListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I
    .param p5, "is24HourView"    # Z

    .prologue
    .line 77
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/zte/mifavor/widget/TimePickerDialogZTE;-><init>(Landroid/content/Context;ILcom/zte/mifavor/widget/TimePickerDialogZTE$OnTimeSetListener;IIZ)V

    .line 78
    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    .line 90
    sget v0, Lcom/zte/extres/R$style;->Theme_ZTE_Light_Dialog:I

    return v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 138
    packed-switch p2, :pswitch_data_0

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 140
    :pswitch_0
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimeSetCallback:Lcom/zte/mifavor/widget/TimePickerDialogZTE$OnTimeSetListener;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-virtual {v0}, Lcom/zte/mifavor/widget/TimePickerZTE;->clearFocus()V

    .line 142
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimeSetCallback:Lcom/zte/mifavor/widget/TimePickerDialogZTE$OnTimeSetListener;

    iget-object v1, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-virtual {v3}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/zte/mifavor/widget/TimePickerDialogZTE$OnTimeSetListener;->onTimeSet(Lcom/zte/mifavor/widget/TimePickerZTE;II)V

    goto :goto_0

    .line 138
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/zte/mifavor/widget/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 172
    const-string v2, "hour"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 173
    .local v0, "hour":I
    const-string v2, "minute"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 174
    .local v1, "minute":I
    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    const-string v3, "is24hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/widget/TimePickerZTE;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 175
    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentHour(Ljava/lang/Integer;)V

    .line 176
    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 177
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 162
    invoke-super {p0}, Lcom/zte/mifavor/widget/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 163
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "hour"

    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 164
    const-string v1, "minute"

    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    const-string v1, "is24hour"

    iget-object v2, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-virtual {v2}, Lcom/zte/mifavor/widget/TimePickerZTE;->is24HourView()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 166
    return-object v0
.end method

.method public onTimeChanged(Lcom/zte/mifavor/widget/TimePickerZTE;II)V
    .locals 0
    .param p1, "view"    # Lcom/zte/mifavor/widget/TimePickerZTE;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 129
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-virtual {v0, p1}, Lcom/zte/mifavor/widget/TimePickerZTE;->setColor(I)V

    .line 134
    return-void
.end method

.method public updateTime(II)V
    .locals 2
    .param p1, "hourOfDay"    # I
    .param p2, "minuteOfHour"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentHour(Ljava/lang/Integer;)V

    .line 157
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePickerDialogZTE;->mTimePicker:Lcom/zte/mifavor/widget/TimePickerZTE;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/mifavor/widget/TimePickerZTE;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 158
    return-void
.end method
