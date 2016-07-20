.class final Lcom/zte/zgesture/MainSettingActivity$3;
.super Ljava/lang/Object;
.source "MainSettingActivity.java"

# interfaces
.implements Lcom/zte/mifavor/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/MainSettingActivity;->initLearnMorePref(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$prefFragment:Lcom/zte/mifavor/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/zte/mifavor/preference/PreferenceFragment;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/zte/zgesture/MainSettingActivity$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/zte/zgesture/MainSettingActivity$3;->val$prefFragment:Lcom/zte/mifavor/preference/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Lcom/zte/mifavor/preference/Preference;)Z
    .locals 3
    .param p1, "preference"    # Lcom/zte/mifavor/preference/Preference;

    .prologue
    .line 207
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/zgesture/MainSettingActivity$3;->val$context:Landroid/content/Context;

    const-class v2, Lcom/zte/zgesture/setting/LearnMoreActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 208
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/zgesture/MainSettingActivity$3;->val$prefFragment:Lcom/zte/mifavor/preference/PreferenceFragment;

    invoke-virtual {v1, v0}, Lcom/zte/mifavor/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V

    .line 209
    const/4 v1, 0x1

    return v1
.end method
