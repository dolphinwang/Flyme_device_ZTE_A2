.class abstract Lcom/zte/mifavor/widget/DatePicker$AbstractDatePickerDelegate;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Lcom/zte/mifavor/widget/DatePicker$DatePickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractDatePickerDelegate"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCurrentLocale:Ljava/util/Locale;

.field protected mDelegator:Lcom/zte/mifavor/widget/DatePicker;

.field protected mOnDateChangedListener:Lcom/zte/mifavor/widget/DatePicker$OnDateChangedListener;

.field protected mValidationCallback:Lcom/zte/mifavor/widget/DatePicker$ValidationCallback;


# direct methods
.method public constructor <init>(Lcom/zte/mifavor/widget/DatePicker;Landroid/content/Context;)V
    .locals 1
    .param p1, "delegator"    # Lcom/zte/mifavor/widget/DatePicker;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput-object p1, p0, Lcom/zte/mifavor/widget/DatePicker$AbstractDatePickerDelegate;->mDelegator:Lcom/zte/mifavor/widget/DatePicker;

    .line 490
    iput-object p2, p0, Lcom/zte/mifavor/widget/DatePicker$AbstractDatePickerDelegate;->mContext:Landroid/content/Context;

    .line 493
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/DatePicker$AbstractDatePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 494
    return-void
.end method


# virtual methods
.method protected onValidationChanged(Z)V
    .locals 1
    .param p1, "valid"    # Z

    .prologue
    .line 509
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePicker$AbstractDatePickerDelegate;->mValidationCallback:Lcom/zte/mifavor/widget/DatePicker$ValidationCallback;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePicker$AbstractDatePickerDelegate;->mValidationCallback:Lcom/zte/mifavor/widget/DatePicker$ValidationCallback;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/widget/DatePicker$ValidationCallback;->onValidationChanged(Z)V

    .line 512
    :cond_0
    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/zte/mifavor/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    :goto_0
    return-void

    .line 500
    :cond_0
    iput-object p1, p0, Lcom/zte/mifavor/widget/DatePicker$AbstractDatePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    goto :goto_0
.end method

.method public setValidationCallback(Lcom/zte/mifavor/widget/DatePicker$ValidationCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/zte/mifavor/widget/DatePicker$ValidationCallback;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/zte/mifavor/widget/DatePicker$AbstractDatePickerDelegate;->mValidationCallback:Lcom/zte/mifavor/widget/DatePicker$ValidationCallback;

    .line 506
    return-void
.end method
