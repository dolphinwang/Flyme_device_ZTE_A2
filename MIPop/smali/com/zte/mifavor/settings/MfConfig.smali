.class public Lcom/zte/mifavor/settings/MfConfig;
.super Ljava/lang/Object;
.source "MfConfig.java"


# static fields
.field private static final DEFAULT_CONFIG_FILE:Ljava/lang/String; = "default.settings"

.field private static final OFF:Ljava/lang/String; = "0"

.field private static final ON:Ljava/lang/String; = "1"

.field private static final PRJ_CONFIG_DIR:Ljava/lang/String; = "/system/etc"

.field private static final TAG:Ljava/lang/String; = "MfConfig"

.field private static final VAL_SEP:Ljava/lang/String; = ","

.field private static mCustomOnlyInstance:Lcom/zte/mifavor/settings/MfConfig;

.field private static mInstance:Lcom/zte/mifavor/settings/MfConfig;


# instance fields
.field private mConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/settings/MfConfig;->mConfigs:Ljava/util/HashMap;

    .line 31
    invoke-direct {p0}, Lcom/zte/mifavor/settings/MfConfig;->loadProjectConfigs()V

    .line 32
    const-string v0, "MfConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "all:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/settings/MfConfig;->mConfigs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/mifavor/settings/MfConfig;->mConfigs:Ljava/util/HashMap;

    .line 36
    invoke-direct {p0, p1}, Lcom/zte/mifavor/settings/MfConfig;->loadDefaultConfigs(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0}, Lcom/zte/mifavor/settings/MfConfig;->loadProjectConfigs()V

    .line 38
    const-string v0, "MfConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "project:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/mifavor/settings/MfConfig;->mConfigs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/zte/mifavor/settings/MfConfig;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    sget-object v0, Lcom/zte/mifavor/settings/MfConfig;->mInstance:Lcom/zte/mifavor/settings/MfConfig;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/zte/mifavor/settings/MfConfig;

    invoke-direct {v0, p0}, Lcom/zte/mifavor/settings/MfConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/mifavor/settings/MfConfig;->mInstance:Lcom/zte/mifavor/settings/MfConfig;

    .line 45
    :cond_0
    sget-object v0, Lcom/zte/mifavor/settings/MfConfig;->mInstance:Lcom/zte/mifavor/settings/MfConfig;

    return-object v0
.end method

.method public static getProjectConfig()Lcom/zte/mifavor/settings/MfConfig;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/zte/mifavor/settings/MfConfig;->mCustomOnlyInstance:Lcom/zte/mifavor/settings/MfConfig;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/zte/mifavor/settings/MfConfig;

    invoke-direct {v0}, Lcom/zte/mifavor/settings/MfConfig;-><init>()V

    sput-object v0, Lcom/zte/mifavor/settings/MfConfig;->mCustomOnlyInstance:Lcom/zte/mifavor/settings/MfConfig;

    .line 52
    :cond_0
    sget-object v0, Lcom/zte/mifavor/settings/MfConfig;->mCustomOnlyInstance:Lcom/zte/mifavor/settings/MfConfig;

    return-object v0
.end method

.method private loadConfigs(Ljava/io/Reader;)V
    .locals 7
    .param p1, "reader"    # Ljava/io/Reader;

    .prologue
    .line 153
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 155
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 156
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 157
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_0

    .line 161
    const-string v4, "=|;"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, "kv":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 166
    iget-object v4, p0, Lcom/zte/mifavor/settings/MfConfig;->mConfigs:Ljava/util/HashMap;

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 168
    .end local v2    # "kv":[Ljava/lang/String;
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 169
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 177
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 172
    .restart local v3    # "line":Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 173
    :catch_1
    move-exception v1

    .line 174
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 173
    .end local v3    # "line":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 174
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 171
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 172
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 175
    :goto_2
    throw v4

    .line 173
    :catch_3
    move-exception v1

    .line 174
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private loadDefaultConfigs(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    const/4 v2, 0x0

    .line 129
    .local v2, "settingsCtx":Landroid/content/Context;
    :try_start_0
    const-string v3, "com.android.settings"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 136
    const/4 v1, 0x0

    .line 138
    .local v1, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "default.settings"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 139
    if-eqz v1, :cond_0

    .line 140
    const-string v3, "MfConfig"

    const-string v4, "loading default configs."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v3}, Lcom/zte/mifavor/settings/MfConfig;->loadConfigs(Ljava/io/Reader;)V

    .line 142
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 144
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "MfConfig"

    const-string v4, "default.settings NOT FOUND!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private loadProjectConfigs()V
    .locals 9

    .prologue
    .line 98
    new-instance v6, Ljava/io/File;

    const-string v7, "/system/etc"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/zte/mifavor/settings/MfConfig$1;

    invoke-direct {v7, p0}, Lcom/zte/mifavor/settings/MfConfig$1;-><init>(Lcom/zte/mifavor/settings/MfConfig;)V

    invoke-virtual {v6, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 111
    .local v3, "files":[Ljava/io/File;
    if-nez v3, :cond_1

    .line 112
    const-string v6, "MfConfig"

    const-string v7, "loadProjectConfigs, files == null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    return-void

    .line 116
    :cond_1
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 118
    .local v2, "file":Ljava/io/File;
    :try_start_0
    const-string v6, "MfConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loading project configs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v6}, Lcom/zte/mifavor/settings/MfConfig;->loadConfigs(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v1, p0, Lcom/zte/mifavor/settings/MfConfig;->mConfigs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    .local v0, "val":Ljava/lang/String;
    const-string v1, "MfConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-object v0
.end method

.method public getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/settings/MfConfig;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "val":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v0, p2

    .line 64
    :cond_0
    return-object v0
.end method

.method public isConfiged(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 68
    const-string v0, "1"

    invoke-virtual {p0, p1}, Lcom/zte/mifavor/settings/MfConfig;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isConfiged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "values"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 76
    invoke-virtual {p0, p1}, Lcom/zte/mifavor/settings/MfConfig;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "curVal":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v10

    .line 81
    :cond_1
    const-string v11, ","

    invoke-virtual {p2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_4

    aget-object v6, v0, v5

    .line 82
    .local v6, "item":Ljava/lang/String;
    const/4 v9, 0x0

    .line 83
    .local v9, "valid":Z
    const-string v11, ","

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v8, :cond_2

    aget-object v2, v1, v4

    .line 84
    .local v2, "cur":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 85
    const/4 v9, 0x1

    .line 89
    .end local v2    # "cur":Ljava/lang/String;
    :cond_2
    if-eqz v9, :cond_0

    .line 81
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_1

    .line 83
    .end local v5    # "i$":I
    .restart local v2    # "cur":Ljava/lang/String;
    .restart local v4    # "i$":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 94
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "cur":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "item":Ljava/lang/String;
    .end local v8    # "len$":I
    .end local v9    # "valid":Z
    .restart local v5    # "i$":I
    :cond_4
    const/4 v10, 0x1

    goto :goto_0
.end method

.method public isConfiged(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .prologue
    .line 72
    const-string v1, "1"

    if-eqz p2, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/zte/mifavor/settings/MfConfig;->getConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method
