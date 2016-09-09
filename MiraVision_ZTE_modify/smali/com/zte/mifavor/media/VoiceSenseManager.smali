.class public Lcom/zte/mifavor/media/VoiceSenseManager;
.super Ljava/lang/Object;
.source "VoiceSenseManager.java"


# static fields
.field public static final EXTRA_VOICESENSE_STATE:Ljava/lang/String; = "android.media.EXTRA_VOICESENSE_STATE"

.field private static final TAG:Ljava/lang/String; = "VoiceSenseManager"

.field public static final VOICESENSE_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOICESENSE_STATE_CHANGED"

.field public static final VOICESENSE_STATE_DISABLED:I = 0x1

.field public static final VOICESENSE_STATE_DISABLING:I = 0x0

.field public static final VOICESENSE_STATE_ENABLED:I = 0x3

.field public static final VOICESENSE_STATE_ENABLING:I = 0x2

.field public static final VOICESENSE_STATE_UNKNOWN:I = 0x4

.field private static final VOICE_SENSE_SERVICE:Ljava/lang/String; = "voice_sense"

.field private static sInstance:Lcom/zte/mifavor/media/VoiceSenseManager;


# instance fields
.field private mIsVoiceSenseSupported:Z

.field private mService:Landroid/os/IVoiceSenseService;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static getInstance()Lcom/zte/mifavor/media/VoiceSenseManager;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/zte/mifavor/media/VoiceSenseManager;->sInstance:Lcom/zte/mifavor/media/VoiceSenseManager;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/zte/mifavor/media/VoiceSenseManager;

    invoke-direct {v0}, Lcom/zte/mifavor/media/VoiceSenseManager;-><init>()V

    sput-object v0, Lcom/zte/mifavor/media/VoiceSenseManager;->sInstance:Lcom/zte/mifavor/media/VoiceSenseManager;

    .line 88
    :cond_0
    sget-object v0, Lcom/zte/mifavor/media/VoiceSenseManager;->sInstance:Lcom/zte/mifavor/media/VoiceSenseManager;

    return-object v0
.end method

.method private getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getService()Landroid/os/IVoiceSenseService;
    .locals 3

    .prologue
    .line 232
    iget-object v2, p0, Lcom/zte/mifavor/media/VoiceSenseManager;->mService:Landroid/os/IVoiceSenseService;

    if-nez v2, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/zte/mifavor/media/VoiceSenseManager;->getProductName()Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "name":Ljava/lang/String;
    const-string v2, "P897A20"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    const-string v2, "voicesense"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 236
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IVoiceSenseService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoiceSenseService;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/mifavor/media/VoiceSenseManager;->mService:Landroid/os/IVoiceSenseService;

    .line 242
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/zte/mifavor/media/VoiceSenseManager;->mService:Landroid/os/IVoiceSenseService;

    return-object v2

    .line 238
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    const-string v2, "voice_sense"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 239
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IVoiceSenseService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoiceSenseService;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/mifavor/media/VoiceSenseManager;->mService:Landroid/os/IVoiceSenseService;

    goto :goto_0
.end method


# virtual methods
.method public getKeyword(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/zte/mifavor/media/VoiceSenseManager;->getService()Landroid/os/IVoiceSenseService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/IVoiceSenseService;->getKeywordRDB(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/zte/mifavor/media/VoiceSenseManager;->getService()Landroid/os/IVoiceSenseService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/IVoiceSenseService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceSenseState()I
    .locals 3

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/zte/mifavor/media/VoiceSenseManager;->getService()Landroid/os/IVoiceSenseService;

    move-result-object v1

    .line 152
    .local v1, "service":Landroid/os/IVoiceSenseService;
    :try_start_0
    invoke-interface {v1}, Landroid/os/IVoiceSenseService;->getVoiceSenseState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 154
    :goto_0
    return v2

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x4

    goto :goto_0
.end method

.method public isCallControlSupported()Z
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method public isCurrentLanguageSupported()Z
    .locals 5

    .prologue
    .line 250
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "currentLanguage":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "currentCountry":Ljava/lang/String;
    const-string v2, "VoiceSenseManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "currentLanguage is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "currentCountry is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    const/4 v2, 0x1

    .line 256
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDirectcallSupported()Z
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public isDriverAssistantSupported()Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    return v0
.end method

.method public isIncallReportSupported()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public isMusicControlSupported()Z
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public isOnlineServiceSupported()Z
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x1

    return v0
.end method

.method public isUserDefinedMagicSupported()Z
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x1

    return v0
.end method

.method public isUserDefinedVoiceWakeupSupported()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public isVoiceAssistantSupported()Z
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x1

    return v0
.end method

.method public isVoicePasswordSupported()Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public isVoiceSenseSupported()Z
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/zte/mifavor/media/VoiceSenseManager;->getService()Landroid/os/IVoiceSenseService;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/zte/mifavor/media/VoiceSenseManager;->mIsVoiceSenseSupported:Z

    .line 130
    iget-boolean v0, p0, Lcom/zte/mifavor/media/VoiceSenseManager;->mIsVoiceSenseSupported:Z

    return v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVoiceWakeupSupported()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public readSysfs(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "sysfspath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/zte/mifavor/media/VoiceSenseManager;->getService()Landroid/os/IVoiceSenseService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/IVoiceSenseService;->readSysfs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public runSysCmd(Ljava/lang/String;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/zte/mifavor/media/VoiceSenseManager;->getService()Landroid/os/IVoiceSenseService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/os/IVoiceSenseService;->runSysCmd(Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method public setKeyword(Ljava/lang/String;I)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/zte/mifavor/media/VoiceSenseManager;->getService()Landroid/os/IVoiceSenseService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/IVoiceSenseService;->setKeywordWDB(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/zte/mifavor/media/VoiceSenseManager;->getService()Landroid/os/IVoiceSenseService;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/os/IVoiceSenseService;->setValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setVoiceSenseEnabled(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/zte/mifavor/media/VoiceSenseManager;->getService()Landroid/os/IVoiceSenseService;

    move-result-object v2

    .line 136
    .local v2, "service":Landroid/os/IVoiceSenseService;
    :try_start_0
    invoke-direct {p0}, Lcom/zte/mifavor/media/VoiceSenseManager;->getProductName()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "name":Ljava/lang/String;
    const-string v3, "P897A20"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    invoke-interface {v2, p2}, Landroid/os/IVoiceSenseService;->setVoiceSenseEnabled(Z)Z

    move-result v3

    .line 145
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return v3

    .line 139
    .restart local v1    # "name":Ljava/lang/String;
    :cond_0
    const-string v3, "P898S10"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    invoke-interface {v2, p2}, Landroid/os/IVoiceSenseService;->setVoiceSenseEnabled(Z)Z

    move-result v3

    goto :goto_0

    .line 142
    :cond_1
    invoke-interface {v2, p1, p2}, Landroid/os/IVoiceSenseService;->setVoiceSenseEnabledByKey(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 144
    .end local v1    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_0
.end method
