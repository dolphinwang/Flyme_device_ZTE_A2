.class Lcom/zte/zgesture/setting/ShakeSettingActivity$2;
.super Ljava/lang/Object;
.source "ShakeSettingActivity.java"

# interfaces
.implements Lcom/zte/mifavor/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zgesture/setting/ShakeSettingActivity;->setFeaturePref(Ljava/lang/String;ZLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zgesture/setting/ShakeSettingActivity;

.field final synthetic val$myPref:Lcom/zte/zgesture/setting/RadioPreference;


# direct methods
.method constructor <init>(Lcom/zte/zgesture/setting/ShakeSettingActivity;Lcom/zte/zgesture/setting/RadioPreference;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/zte/zgesture/setting/ShakeSettingActivity$2;->this$0:Lcom/zte/zgesture/setting/ShakeSettingActivity;

    iput-object p2, p0, Lcom/zte/zgesture/setting/ShakeSettingActivity$2;->val$myPref:Lcom/zte/zgesture/setting/RadioPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/zte/mifavor/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Lcom/zte/mifavor/preference/Preference;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/zte/zgesture/setting/ShakeSettingActivity$2;->this$0:Lcom/zte/zgesture/setting/ShakeSettingActivity;

    iget-object v1, p0, Lcom/zte/zgesture/setting/ShakeSettingActivity$2;->val$myPref:Lcom/zte/zgesture/setting/RadioPreference;

    invoke-virtual {v0, v1}, Lcom/zte/zgesture/setting/ShakeSettingActivity;->updatePreferenceStatus(Lcom/zte/mifavor/preference/Preference;)V

    .line 91
    const/4 v0, 0x1

    return v0
.end method
