.class abstract Lcom/zte/mifavor/widget/TimePicker$AbstractTimePickerDelegate;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Lcom/zte/mifavor/widget/TimePicker$TimePickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractTimePickerDelegate"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCurrentLocale:Ljava/util/Locale;

.field protected mDelegator:Lcom/zte/mifavor/widget/TimePicker;

.field protected mOnTimeChangedListener:Lcom/zte/mifavor/widget/TimePicker$OnTimeChangedListener;

.field protected mValidationCallback:Lcom/zte/mifavor/widget/TimePicker$ValidationCallback;


# direct methods
.method public constructor <init>(Lcom/zte/mifavor/widget/TimePicker;Landroid/content/Context;)V
    .locals 1
    .param p1, "delegator"    # Lcom/zte/mifavor/widget/TimePicker;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p1, p0, Lcom/zte/mifavor/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Lcom/zte/mifavor/widget/TimePicker;

    .line 276
    iput-object p2, p0, Lcom/zte/mifavor/widget/TimePicker$AbstractTimePickerDelegate;->mContext:Landroid/content/Context;

    .line 279
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/TimePicker$AbstractTimePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 280
    return-void
.end method


# virtual methods
.method protected onValidationChanged(Z)V
    .locals 1
    .param p1, "valid"    # Z

    .prologue
    .line 295
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePicker$AbstractTimePickerDelegate;->mValidationCallback:Lcom/zte/mifavor/widget/TimePicker$ValidationCallback;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePicker$AbstractTimePickerDelegate;->mValidationCallback:Lcom/zte/mifavor/widget/TimePicker$ValidationCallback;

    invoke-interface {v0, p1}, Lcom/zte/mifavor/widget/TimePicker$ValidationCallback;->onValidationChanged(Z)V

    .line 298
    :cond_0
    return-void
.end method

.method public setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/zte/mifavor/widget/TimePicker$AbstractTimePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    :goto_0
    return-void

    .line 286
    :cond_0
    iput-object p1, p0, Lcom/zte/mifavor/widget/TimePicker$AbstractTimePickerDelegate;->mCurrentLocale:Ljava/util/Locale;

    goto :goto_0
.end method

.method public setValidationCallback(Lcom/zte/mifavor/widget/TimePicker$ValidationCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/zte/mifavor/widget/TimePicker$ValidationCallback;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/zte/mifavor/widget/TimePicker$AbstractTimePickerDelegate;->mValidationCallback:Lcom/zte/mifavor/widget/TimePicker$ValidationCallback;

    .line 292
    return-void
.end method
