.class Lcom/zte/mifavor/preference/PreferenceScreen$3;
.super Ljava/lang/Object;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/zte/mifavor/preference/PreferenceScreen;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/zte/mifavor/preference/PreferenceScreen$3;->this$0:Lcom/zte/mifavor/preference/PreferenceScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 331
    const-string v0, "guojingdong"

    const-string v1, "dialog.dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceScreen$3;->this$0:Lcom/zte/mifavor/preference/PreferenceScreen;

    # getter for: Lcom/zte/mifavor/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/zte/mifavor/preference/PreferenceScreen;->access$000(Lcom/zte/mifavor/preference/PreferenceScreen;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/zte/mifavor/preference/PreferenceScreen$3;->this$0:Lcom/zte/mifavor/preference/PreferenceScreen;

    # getter for: Lcom/zte/mifavor/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/zte/mifavor/preference/PreferenceScreen;->access$000(Lcom/zte/mifavor/preference/PreferenceScreen;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 334
    :cond_0
    return-void
.end method
