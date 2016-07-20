.class public Lcom/zte/mifavor/widget/NumberPickerZTE$CustomEditText;
.super Landroid/widget/EditText;
.source "NumberPickerZTE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/mifavor/widget/NumberPickerZTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomEditText"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2465
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2466
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/widget/NumberPickerZTE$CustomEditText;->setInputType(I)V

    .line 2470
    return-void
.end method


# virtual methods
.method public onEditorAction(I)V
    .locals 1
    .param p1, "actionCode"    # I

    .prologue
    .line 2474
    invoke-super {p0, p1}, Landroid/widget/EditText;->onEditorAction(I)V

    .line 2475
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 2476
    invoke-virtual {p0}, Lcom/zte/mifavor/widget/NumberPickerZTE$CustomEditText;->clearFocus()V

    .line 2478
    :cond_0
    return-void
.end method
