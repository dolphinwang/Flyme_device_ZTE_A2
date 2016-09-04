.class public Lcom/zte/mifavor/settings/Sim;
.super Ljava/lang/Object;
.source "Sim.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/mifavor/settings/Sim$UpdateSimInfo;,
        Lcom/zte/mifavor/settings/Sim$SimName;
    }
.end annotation


# static fields
.field public static final ACTION_SIM_INFO_CHANGED:Ljava/lang/String; = "com.zte.mifavor.settings.SIM_INFO_CHANGED"

.field private static final EVT_UPDATE:I = 0x0

.field private static final EVT_UPDATE_WITHOUT_BROADCAST:I = 0x1

.field public static final NAME_CUSTOM_OPERATOR_SIMX:I = 0x3

.field public static final NAME_CUSTOM_SIMX:I = 0x1

.field public static final NAME_OPERATOR:I = 0x4

.field public static final NAME_OPERATOR_SIMX:I = 0x2

.field public static final NAME_SIMX:I = 0x0

.field public static final SIM_CM:I = 0x0

.field public static final SIM_CT:I = 0x2

.field public static final SIM_CU:I = 0x1

.field public static final SIM_OTHERS:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ZteSim"

.field private static mInstance:Lcom/zte/mifavor/settings/Sim;


# instance fields
.field private mContext:Landroid/content/Context;

.field mDefaultIcons:[I

.field mIcons:[I

.field mNameRes:[I

.field private mNames:[Lcom/zte/mifavor/settings/Sim$SimName;

.field private final mNumPhones:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverHandler:Landroid/os/Handler;

.field private mShowSpn:[Z

.field private mSimType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTranslateNames:[[Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/zte/mifavor/settings/Sim;->mSimType:Ljava/util/HashMap;

    .line 52
    iget-object v4, p0, Lcom/zte/mifavor/settings/Sim;->mSimType:Ljava/util/HashMap;

    const-string v5, "46000"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v4, p0, Lcom/zte/mifavor/settings/Sim;->mSimType:Ljava/util/HashMap;

    const-string v5, "46002"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v4, p0, Lcom/zte/mifavor/settings/Sim;->mSimType:Ljava/util/HashMap;

    const-string v5, "46007"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v4, p0, Lcom/zte/mifavor/settings/Sim;->mSimType:Ljava/util/HashMap;

    const-string v5, "46008"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v4, p0, Lcom/zte/mifavor/settings/Sim;->mSimType:Ljava/util/HashMap;

    const-string v5, "46001"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v4, p0, Lcom/zte/mifavor/settings/Sim;->mSimType:Ljava/util/HashMap;

    const-string v5, "46006"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v4, p0, Lcom/zte/mifavor/settings/Sim;->mSimType:Ljava/util/HashMap;

    const-string v5, "46009"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v4, p0, Lcom/zte/mifavor/settings/Sim;->mSimType:Ljava/util/HashMap;

    const-string v5, "46003"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v4, p0, Lcom/zte/mifavor/settings/Sim;->mSimType:Ljava/util/HashMap;

    const-string v5, "46011"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v4, p0, Lcom/zte/mifavor/settings/Sim;->mSimType:Ljava/util/HashMap;

    const-string v5, "46099"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-array v4, v10, [I

    sget v5, Lcom/zte/mifavor/R$string;->spn_china_mobile:I

    aput v5, v4, v7

    sget v5, Lcom/zte/mifavor/R$string;->spn_china_unicom:I

    aput v5, v4, v8

    sget v5, Lcom/zte/mifavor/R$string;->spn_china_telecom:I

    aput v5, v4, v9

    iput-object v4, p0, Lcom/zte/mifavor/settings/Sim;->mNameRes:[I

    .line 71
    new-array v4, v9, [I

    sget v5, Lcom/zte/mifavor/R$drawable;->ic_card1:I

    aput v5, v4, v7

    sget v5, Lcom/zte/mifavor/R$drawable;->ic_card2:I

    aput v5, v4, v8

    iput-object v4, p0, Lcom/zte/mifavor/settings/Sim;->mDefaultIcons:[I

    .line 76
    new-array v4, v10, [I

    sget v5, Lcom/zte/mifavor/R$drawable;->ic_chinamobile:I

    aput v5, v4, v7

    sget v5, Lcom/zte/mifavor/R$drawable;->ic_chinaunicom:I

    aput v5, v4, v8

    sget v5, Lcom/zte/mifavor/R$drawable;->ic_chinatelecom:I

    aput v5, v4, v9

    iput-object v4, p0, Lcom/zte/mifavor/settings/Sim;->mIcons:[I

    .line 117
    new-instance v4, Lcom/zte/mifavor/settings/Sim$1;

    invoke-direct {v4, p0}, Lcom/zte/mifavor/settings/Sim$1;-><init>(Lcom/zte/mifavor/settings/Sim;)V

    iput-object v4, p0, Lcom/zte/mifavor/settings/Sim;->mReceiverHandler:Landroid/os/Handler;

    .line 350
    new-instance v4, Lcom/zte/mifavor/settings/Sim$2;

    invoke-direct {v4, p0}, Lcom/zte/mifavor/settings/Sim$2;-><init>(Lcom/zte/mifavor/settings/Sim;)V

    iput-object v4, p0, Lcom/zte/mifavor/settings/Sim;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    iput-object p1, p0, Lcom/zte/mifavor/settings/Sim;->mContext:Landroid/content/Context;

    .line 135
    iget-object v4, p0, Lcom/zte/mifavor/settings/Sim;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/zte/mifavor/settings/Sim;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 137
    iget-object v4, p0, Lcom/zte/mifavor/settings/Sim;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    iput-object v4, p0, Lcom/zte/mifavor/settings/Sim;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 138
    iget-object v4, p0, Lcom/zte/mifavor/settings/Sim;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    iput v4, p0, Lcom/zte/mifavor/settings/Sim;->mNumPhones:I

    .line 139
    const-string v4, "ZteSim"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mNumPhones="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/zte/mifavor/settings/Sim;->mNumPhones:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v4, p0, Lcom/zte/mifavor/settings/Sim;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/zte/mifavor/R$array;->sim_names_cm:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "cm":[Ljava/lang/String;
    iget-object v4, p0, Lcom/zte/mifavor/settings/Sim;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/zte/mifavor/R$array;->sim_names_cu:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "cu":[Ljava/lang/String;
    iget-object v4, p0, Lcom/zte/mifavor/settings/Sim;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/zte/mifavor/R$array;->sim_names_ct:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "ct":[Ljava/lang/String;
    new-array v4, v10, [[Ljava/lang/String;

    aput-object v0, v4, v7

    aput-object v2, v4, v8

    aput-object v1, v4, v9

    iput-object v4, p0, Lcom/zte/mifavor/settings/Sim;->mTranslateNames:[[Ljava/lang/String;

    .line 149
    iget v4, p0, Lcom/zte/mifavor/settings/Sim;->mNumPhones:I

    new-array v4, v4, [Z

    iput-object v4, p0, Lcom/zte/mifavor/settings/Sim;->mShowSpn:[Z

    .line 150
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lcom/zte/mifavor/settings/Sim;->mNumPhones:I

    if-ge v3, v4, :cond_0

    .line 151
    iget-object v4, p0, Lcom/zte/mifavor/settings/Sim;->mShowSpn:[Z

    aput-boolean v8, v4, v3

    .line 150
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/zte/mifavor/settings/Sim;->update()[Lcom/zte/mifavor/settings/Sim$SimName;

    move-result-object v4

    iput-object v4, p0, Lcom/zte/mifavor/settings/Sim;->mNames:[Lcom/zte/mifavor/settings/Sim$SimName;

    .line 155
    invoke-direct {p0}, Lcom/zte/mifavor/settings/Sim;->registerReceivers()V

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/zte/mifavor/settings/Sim;)[Lcom/zte/mifavor/settings/Sim$SimName;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/settings/Sim;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/zte/mifavor/settings/Sim;->update()[Lcom/zte/mifavor/settings/Sim$SimName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/mifavor/settings/Sim;)[Lcom/zte/mifavor/settings/Sim$SimName;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/settings/Sim;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zte/mifavor/settings/Sim;->mNames:[Lcom/zte/mifavor/settings/Sim$SimName;

    return-object v0
.end method

.method static synthetic access$102(Lcom/zte/mifavor/settings/Sim;[Lcom/zte/mifavor/settings/Sim$SimName;)[Lcom/zte/mifavor/settings/Sim$SimName;
    .locals 0
    .param p0, "x0"    # Lcom/zte/mifavor/settings/Sim;
    .param p1, "x1"    # [Lcom/zte/mifavor/settings/Sim$SimName;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/zte/mifavor/settings/Sim;->mNames:[Lcom/zte/mifavor/settings/Sim$SimName;

    return-object p1
.end method

.method static synthetic access$200(Lcom/zte/mifavor/settings/Sim;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/settings/Sim;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zte/mifavor/settings/Sim;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/mifavor/settings/Sim;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/zte/mifavor/settings/Sim;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zte/mifavor/settings/Sim;->mReceiverHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/mifavor/settings/Sim;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    sget-object v0, Lcom/zte/mifavor/settings/Sim;->mInstance:Lcom/zte/mifavor/settings/Sim;

    if-nez v0, :cond_0

    .line 160
    const-string v0, "ZteSim"

    const-string v1, "new instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-instance v0, Lcom/zte/mifavor/settings/Sim;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/mifavor/settings/Sim;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/mifavor/settings/Sim;->mInstance:Lcom/zte/mifavor/settings/Sim;

    .line 164
    :cond_0
    sget-object v0, Lcom/zte/mifavor/settings/Sim;->mInstance:Lcom/zte/mifavor/settings/Sim;

    return-object v0
.end method

.method private getSimX(I)Ljava/lang/String;
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    .line 347
    iget-object v0, p0, Lcom/zte/mifavor/settings/Sim;->mContext:Landroid/content/Context;

    sget v1, Lcom/zte/mifavor/R$string;->sim_name:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private registerReceivers()V
    .locals 3

    .prologue
    .line 168
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 169
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/zte/mifavor/settings/Sim;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/zte/mifavor/settings/Sim;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 175
    return-void
.end method

.method private translate(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "spn"    # Ljava/lang/String;

    .prologue
    .line 289
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/zte/mifavor/settings/Sim;->mTranslateNames:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 290
    iget-object v3, p0, Lcom/zte/mifavor/settings/Sim;->mTranslateNames:[[Ljava/lang/String;

    aget-object v2, v3, v0

    .line 291
    .local v2, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 292
    aget-object v3, v2, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 293
    iget-object v3, p0, Lcom/zte/mifavor/settings/Sim;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/mifavor/settings/Sim;->mNameRes:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 298
    .end local v1    # "j":I
    .end local v2    # "names":[Ljava/lang/String;
    .end local p1    # "spn":Ljava/lang/String;
    :cond_0
    return-object p1

    .line 291
    .restart local v1    # "j":I
    .restart local v2    # "names":[Ljava/lang/String;
    .restart local p1    # "spn":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 289
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private update()[Lcom/zte/mifavor/settings/Sim$SimName;
    .locals 13

    .prologue
    .line 178
    iget v9, p0, Lcom/zte/mifavor/settings/Sim;->mNumPhones:I

    new-array v1, v9, [Lcom/zte/mifavor/settings/Sim$SimName;

    .line 179
    .local v1, "names":[Lcom/zte/mifavor/settings/Sim$SimName;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v9, p0, Lcom/zte/mifavor/settings/Sim;->mNumPhones:I

    if-ge v0, v9, :cond_0

    .line 180
    new-instance v9, Lcom/zte/mifavor/settings/Sim$SimName;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/zte/mifavor/settings/Sim$SimName;-><init>(Lcom/zte/mifavor/settings/Sim$1;)V

    aput-object v9, v1, v0

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_0
    const/4 v4, 0x0

    .local v4, "slotId":I
    :goto_1
    iget v9, p0, Lcom/zte/mifavor/settings/Sim;->mNumPhones:I

    if-ge v4, v9, :cond_9

    .line 188
    iget-object v9, p0, Lcom/zte/mifavor/settings/Sim;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v9, v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 190
    .local v3, "sir":Landroid/telephony/SubscriptionInfo;
    if-nez v3, :cond_2

    .line 187
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 193
    :cond_2
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    .line 195
    .local v7, "subId":I
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 196
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 197
    .local v8, "temp":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 198
    const-string v9, "ZteSim"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "custom:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    aget-object v9, v1, v4

    iput-object v8, v9, Lcom/zte/mifavor/settings/Sim$SimName;->custom:Ljava/lang/String;

    .line 203
    .end local v8    # "temp":Ljava/lang/String;
    :cond_3
    iget-object v9, p0, Lcom/zte/mifavor/settings/Sim;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9, v7}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, "so":Ljava/lang/String;
    iget-object v9, p0, Lcom/zte/mifavor/settings/Sim;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9, v4}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, "spn":Ljava/lang/String;
    iget-object v9, p0, Lcom/zte/mifavor/settings/Sim;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v9, v7}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "plmn":Ljava/lang/String;
    const-string v9, "ZteSim"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "(spn,plmn):"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v9, p0, Lcom/zte/mifavor/settings/Sim;->mShowSpn:[Z

    aget-boolean v9, v9, v4

    if-eqz v9, :cond_5

    .line 208
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    move-object v8, v6

    .line 212
    .restart local v8    # "temp":Ljava/lang/String;
    :goto_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 213
    iget-object v9, p0, Lcom/zte/mifavor/settings/Sim;->mSimType:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 214
    aget-object v9, v1, v4

    invoke-direct {p0, v8}, Lcom/zte/mifavor/settings/Sim;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/zte/mifavor/settings/Sim$SimName;->operator:Ljava/lang/String;

    goto/16 :goto_2

    .end local v8    # "temp":Ljava/lang/String;
    :cond_4
    move-object v8, v2

    .line 208
    goto :goto_3

    .line 210
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    move-object v8, v2

    .restart local v8    # "temp":Ljava/lang/String;
    :goto_4
    goto :goto_3

    .end local v8    # "temp":Ljava/lang/String;
    :cond_6
    move-object v8, v6

    goto :goto_4

    .line 216
    .restart local v8    # "temp":Ljava/lang/String;
    :cond_7
    aget-object v9, v1, v4

    iput-object v8, v9, Lcom/zte/mifavor/settings/Sim$SimName;->operator:Ljava/lang/String;

    goto/16 :goto_2

    .line 221
    :cond_8
    iget-object v9, p0, Lcom/zte/mifavor/settings/Sim;->mSimType:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 222
    const-string v9, "ZteSim"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "so:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    aget-object v10, v1, v4

    iget-object v11, p0, Lcom/zte/mifavor/settings/Sim;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/zte/mifavor/settings/Sim;->mNameRes:[I

    iget-object v9, p0, Lcom/zte/mifavor/settings/Sim;->mSimType:Ljava/util/HashMap;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aget v9, v12, v9

    invoke-virtual {v11, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v10, Lcom/zte/mifavor/settings/Sim$SimName;->operator:Ljava/lang/String;

    goto/16 :goto_2

    .line 228
    .end local v2    # "plmn":Ljava/lang/String;
    .end local v3    # "sir":Landroid/telephony/SubscriptionInfo;
    .end local v5    # "so":Ljava/lang/String;
    .end local v6    # "spn":Ljava/lang/String;
    .end local v7    # "subId":I
    .end local v8    # "temp":Ljava/lang/String;
    :cond_9
    const-string v9, "ZteSim"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "update:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-object v1
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 378
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 379
    const-string v0, "ZteSim"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/zte/mifavor/settings/Sim;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/zte/mifavor/settings/Sim;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 381
    return-void
.end method

.method public getIconRes(I)I
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 319
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 320
    .local v1, "subId":[I
    if-nez v1, :cond_0

    .line 321
    iget-object v2, p0, Lcom/zte/mifavor/settings/Sim;->mDefaultIcons:[I

    aget v2, v2, p1

    .line 328
    :goto_0
    return v2

    .line 324
    :cond_0
    iget-object v2, p0, Lcom/zte/mifavor/settings/Sim;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "so":Ljava/lang/String;
    iget-object v2, p0, Lcom/zte/mifavor/settings/Sim;->mSimType:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 326
    iget-object v3, p0, Lcom/zte/mifavor/settings/Sim;->mIcons:[I

    iget-object v2, p0, Lcom/zte/mifavor/settings/Sim;->mSimType:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget v2, v3, v2

    goto :goto_0

    .line 328
    :cond_1
    iget-object v2, p0, Lcom/zte/mifavor/settings/Sim;->mDefaultIcons:[I

    aget v2, v2, p1

    goto :goto_0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 315
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/settings/Sim;->getName(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName(II)Ljava/lang/String;
    .locals 2
    .param p1, "slotId"    # I
    .param p2, "opt"    # I

    .prologue
    .line 306
    invoke-virtual {p0, p2}, Lcom/zte/mifavor/settings/Sim;->getNames(I)[Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "names":[Ljava/lang/String;
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 308
    aget-object v1, v0, p1

    .line 311
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/zte/mifavor/settings/Sim;->getSimX(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/zte/mifavor/settings/Sim;->getNames(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNames(I)[Ljava/lang/String;
    .locals 7
    .param p1, "opt"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 233
    iget v2, p0, Lcom/zte/mifavor/settings/Sim;->mNumPhones:I

    new-array v1, v2, [Ljava/lang/String;

    .line 234
    .local v1, "names":[Ljava/lang/String;
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/zte/mifavor/settings/Sim;->mNumPhones:I

    if-ge v0, v2, :cond_c

    .line 236
    iget-object v2, p0, Lcom/zte/mifavor/settings/Sim;->mNames:[Lcom/zte/mifavor/settings/Sim$SimName;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/zte/mifavor/settings/Sim$SimName;->operator:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/zte/mifavor/settings/Sim;->mNames:[Lcom/zte/mifavor/settings/Sim$SimName;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/zte/mifavor/settings/Sim$SimName;->operator:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 235
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_0
    const-string v2, ""

    aput-object v2, v1, v0

    goto :goto_1

    .line 245
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget v2, p0, Lcom/zte/mifavor/settings/Sim;->mNumPhones:I

    if-ge v0, v2, :cond_2

    .line 246
    invoke-direct {p0, v0}, Lcom/zte/mifavor/settings/Sim;->getSimX(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 249
    :cond_2
    if-nez p1, :cond_4

    .line 273
    :cond_3
    iget v2, p0, Lcom/zte/mifavor/settings/Sim;->mNumPhones:I

    if-le v2, v5, :cond_b

    aget-object v2, v1, v6

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 274
    const/4 v0, 0x0

    :goto_3
    iget v2, p0, Lcom/zte/mifavor/settings/Sim;->mNumPhones:I

    if-ge v0, v2, :cond_b

    .line 275
    invoke-direct {p0, v0}, Lcom/zte/mifavor/settings/Sim;->getSimX(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 274
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 251
    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_6

    .line 252
    const/4 v0, 0x0

    :goto_4
    iget v2, p0, Lcom/zte/mifavor/settings/Sim;->mNumPhones:I

    if-ge v0, v2, :cond_3

    .line 253
    iget-object v2, p0, Lcom/zte/mifavor/settings/Sim;->mNames:[Lcom/zte/mifavor/settings/Sim$SimName;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/zte/mifavor/settings/Sim$SimName;->operator:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 254
    iget-object v2, p0, Lcom/zte/mifavor/settings/Sim;->mNames:[Lcom/zte/mifavor/settings/Sim$SimName;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/zte/mifavor/settings/Sim$SimName;->operator:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 252
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 257
    :cond_6
    if-ne p1, v5, :cond_8

    .line 258
    const/4 v0, 0x0

    :goto_5
    iget v2, p0, Lcom/zte/mifavor/settings/Sim;->mNumPhones:I

    if-ge v0, v2, :cond_3

    .line 259
    iget-object v2, p0, Lcom/zte/mifavor/settings/Sim;->mNames:[Lcom/zte/mifavor/settings/Sim$SimName;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/zte/mifavor/settings/Sim$SimName;->custom:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 260
    iget-object v2, p0, Lcom/zte/mifavor/settings/Sim;->mNames:[Lcom/zte/mifavor/settings/Sim$SimName;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/zte/mifavor/settings/Sim$SimName;->custom:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 258
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 263
    :cond_8
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 264
    const/4 v0, 0x0

    :goto_6
    iget v2, p0, Lcom/zte/mifavor/settings/Sim;->mNumPhones:I

    if-ge v0, v2, :cond_3

    .line 265
    iget-object v2, p0, Lcom/zte/mifavor/settings/Sim;->mNames:[Lcom/zte/mifavor/settings/Sim$SimName;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/zte/mifavor/settings/Sim$SimName;->custom:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 266
    iget-object v2, p0, Lcom/zte/mifavor/settings/Sim;->mNames:[Lcom/zte/mifavor/settings/Sim$SimName;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/zte/mifavor/settings/Sim$SimName;->custom:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 264
    :cond_9
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 267
    :cond_a
    iget-object v2, p0, Lcom/zte/mifavor/settings/Sim;->mNames:[Lcom/zte/mifavor/settings/Sim$SimName;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/zte/mifavor/settings/Sim$SimName;->operator:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 268
    iget-object v2, p0, Lcom/zte/mifavor/settings/Sim;->mNames:[Lcom/zte/mifavor/settings/Sim$SimName;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/zte/mifavor/settings/Sim$SimName;->operator:Ljava/lang/String;

    aput-object v2, v1, v0

    goto :goto_7

    .line 279
    :cond_b
    const-string v2, "ZteSim"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNames:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v2, p0, Lcom/zte/mifavor/settings/Sim;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/zte/mifavor/settings/Sim;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_c

    .line 282
    iget-object v2, p0, Lcom/zte/mifavor/settings/Sim;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 285
    :cond_c
    return-object v1
.end method

.method public getType(I)I
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, -0x1

    .line 333
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 334
    .local v1, "subId":[I
    if-nez v1, :cond_1

    .line 342
    :cond_0
    :goto_0
    return v2

    .line 338
    :cond_1
    iget-object v3, p0, Lcom/zte/mifavor/settings/Sim;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "so":Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/mifavor/settings/Sim;->mSimType:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    iget-object v2, p0, Lcom/zte/mifavor/settings/Sim;->mSimType:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method
