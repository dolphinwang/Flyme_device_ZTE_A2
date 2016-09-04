.class Lcom/zte/mifavor/preference/PreferenceScreen$1;
.super Ljava/lang/Object;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/preference/PreferenceScreen;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/preference/PreferenceScreen;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/zte/mifavor/preference/PreferenceScreen$1;->this$0:Lcom/zte/mifavor/preference/PreferenceScreen;

    iput-object p2, p0, Lcom/zte/mifavor/preference/PreferenceScreen$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceScreen$1;->this$0:Lcom/zte/mifavor/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/zte/mifavor/preference/PreferenceScreen$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/zte/extres/R$color;->mfv_common_acb_icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/zte/mifavor/preference/PreferenceScreen$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/zte/extres/R$color;->mfv_common_acb_txt:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/zte/mifavor/preference/PreferenceScreen;->setAllChildViewsColor(Landroid/view/View;II)V

    .line 285
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 278
    return-void
.end method
