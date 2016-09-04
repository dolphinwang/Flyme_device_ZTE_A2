.class Lcom/zte/mifavor/preference/PreferenceScreen$2;
.super Ljava/lang/Object;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/preference/PreferenceScreen;->setAllChildViewsColor(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/preference/PreferenceScreen;

.field final synthetic val$color:I

.field final synthetic val$textColor:I


# direct methods
.method constructor <init>(Lcom/zte/mifavor/preference/PreferenceScreen;II)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/zte/mifavor/preference/PreferenceScreen$2;->this$0:Lcom/zte/mifavor/preference/PreferenceScreen;

    iput p2, p0, Lcom/zte/mifavor/preference/PreferenceScreen$2;->val$color:I

    iput p3, p0, Lcom/zte/mifavor/preference/PreferenceScreen$2;->val$textColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceScreen$2;->this$0:Lcom/zte/mifavor/preference/PreferenceScreen;

    iget v1, p0, Lcom/zte/mifavor/preference/PreferenceScreen$2;->val$color:I

    iget v2, p0, Lcom/zte/mifavor/preference/PreferenceScreen$2;->val$textColor:I

    invoke-virtual {v0, p2, v1, v2}, Lcom/zte/mifavor/preference/PreferenceScreen;->setAllChildViewsColor(Landroid/view/View;II)V

    .line 316
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 309
    return-void
.end method
