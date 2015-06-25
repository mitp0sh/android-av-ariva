.class public final Lcom/avira/android/threatlandscape/api/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/threatlandscape/api/a;


# static fields
.field private static final HTTP_OK:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "THRTLNDSCPEAPI"


# instance fields
.field private a:Lcom/avira/android/common/web/o;

.field private b:Landroid/telephony/TelephonyManager;

.field private c:Lcom/avira/android/utilities/a;

.field private d:Lcom/avira/android/utilities/t;

.field private e:Lcom/google/b/j;


# direct methods
.method public constructor <init>(Lcom/avira/android/common/web/o;Landroid/telephony/TelephonyManager;Lcom/avira/android/utilities/a;Lcom/avira/android/utilities/t;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lcom/google/b/j;

    invoke-direct {v0}, Lcom/google/b/j;-><init>()V

    iput-object v0, p0, Lcom/avira/android/threatlandscape/api/b;->e:Lcom/google/b/j;

    .line 55
    iput-object p1, p0, Lcom/avira/android/threatlandscape/api/b;->a:Lcom/avira/android/common/web/o;

    .line 56
    iput-object p2, p0, Lcom/avira/android/threatlandscape/api/b;->b:Landroid/telephony/TelephonyManager;

    .line 57
    iput-object p3, p0, Lcom/avira/android/threatlandscape/api/b;->c:Lcom/avira/android/utilities/a;

    .line 58
    iput-object p4, p0, Lcom/avira/android/threatlandscape/api/b;->d:Lcom/avira/android/utilities/t;

    .line 59
    return-void
.end method

.method private a(Lcom/avira/android/common/web/WebResult;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avira/android/common/web/WebResult;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/threatlandscape/api/d;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/threatlandscape/api/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 275
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/avira/android/threatlandscape/api/b;->d:Lcom/avira/android/utilities/t;

    const-string v2, "THRTLNDSCPEAPI"

    const-string v3, "Invalid Single Request parameters for Response query."

    invoke-virtual {v0, v2, v3}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 298
    :goto_0
    return-object v0

    .line 283
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/threatlandscape/api/b;->e:Lcom/google/b/j;

    invoke-virtual {p1}, Lcom/avira/android/common/web/WebResult;->c()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/avira/android/threatlandscape/api/gson/ThreatLandscapeSingleResponseData;

    invoke-virtual {v0, v2, v3}, Lcom/google/b/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/threatlandscape/api/gson/ThreatLandscapeSingleResponseData;

    .line 286
    invoke-virtual {v0}, Lcom/avira/android/threatlandscape/api/gson/ThreatLandscapeSingleResponseData;->isResponseEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 288
    iget-object v0, p0, Lcom/avira/android/threatlandscape/api/b;->d:Lcom/avira/android/utilities/t;

    const-string v2, "THRTLNDSCPEAPI"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "Response Disabled for "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/threatlandscape/api/d;

    invoke-virtual {v0}, Lcom/avira/android/threatlandscape/api/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/b/x; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move-object v0, v1

    .line 298
    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/avira/android/threatlandscape/api/b;->d:Lcom/avira/android/utilities/t;

    const-string v2, "THRTLNDSCPEAPI"

    const-string v3, "Invalid Single Response data."

    invoke-virtual {v0, v2, v3}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private a(Ljava/util/HashMap;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avira/android/antivirus/data/ScannerCallbackData;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/threatlandscape/api/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 122
    :cond_0
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v0

    const-string v2, "THRTLNDSCPEAPI"

    const-string v3, "Invalid input parameters [2]"

    invoke-virtual {v0, v2, v3}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 163
    :goto_0
    return-object v0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/avira/android/threatlandscape/api/b;->d:Lcom/avira/android/utilities/t;

    const-string v0, "THRTLNDSCPEAPI"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "extractDataSetListFromScannerCallbackData - scanResultList.size() = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 132
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/data/ScannerCallbackData;

    .line 134
    invoke-virtual {v0}, Lcom/avira/android/antivirus/data/ScannerCallbackData;->getFileInfo()Lcom/avira/android/antivirus/data/ScannedFileInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avira/android/antivirus/data/ScannedFileInfo;->b()Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-virtual {v0}, Lcom/avira/android/antivirus/data/ScannerCallbackData;->getFileInfo()Lcom/avira/android/antivirus/data/ScannedFileInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/avira/android/antivirus/data/ScannedFileInfo;->c()Ljava/lang/String;

    move-result-object v4

    .line 136
    sget-object v5, Lcom/avira/android/threatlandscape/a/c;->ENCODING_HEX:Lcom/avira/android/threatlandscape/a/c;

    invoke-static {v4, v5}, Lcom/avira/android/threatlandscape/a/a;->a(Ljava/lang/String;Lcom/avira/android/threatlandscape/a/c;)Ljava/lang/String;

    move-result-object v5

    .line 138
    invoke-static {v5}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 141
    iget-object v0, p0, Lcom/avira/android/threatlandscape/api/b;->d:Lcom/avira/android/utilities/t;

    const-string v3, "THRTLNDSCPEAPI"

    const-string v4, "Invalid checkSum value. Skipping item."

    invoke-virtual {v0, v3, v4}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 145
    :cond_3
    invoke-virtual {v0}, Lcom/avira/android/antivirus/data/ScannerCallbackData;->getInfectedFileInfoList()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/data/ScannedFileInfo;

    .line 147
    invoke-virtual {v0}, Lcom/avira/android/antivirus/data/ScannedFileInfo;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/antivirus/data/MalwareInfo;

    .line 149
    invoke-virtual {v0}, Lcom/avira/android/antivirus/data/MalwareInfo;->a()Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v6, Lcom/avira/android/threatlandscape/api/d;

    invoke-direct {v6, v3, v4, v0, v5}, Lcom/avira/android/threatlandscape/api/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 163
    goto/16 :goto_0
.end method

.method private a(Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avira/android/antivirus/data/ScannerCallbackData;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/threatlandscape/api/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 189
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/threatlandscape/api/d;

    invoke-virtual {v0}, Lcom/avira/android/threatlandscape/api/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/avira/android/threatlandscape/api/b;->d:Lcom/avira/android/utilities/t;

    const-string v2, "THRTLNDSCPEAPI"

    const-string v3, "Failed to remove Invalid detection item."

    invoke-virtual {v0, v2, v3}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 200
    :cond_1
    return-void
.end method

.method private b(Lcom/avira/android/common/web/WebResult;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avira/android/common/web/WebResult;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/threatlandscape/api/d;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/threatlandscape/api/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 313
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/avira/android/threatlandscape/api/b;->d:Lcom/avira/android/utilities/t;

    const-string v2, "THRTLNDSCPEAPI"

    const-string v3, "Invalid Bulk Request parameters for Response query."

    invoke-virtual {v0, v2, v3}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 342
    :goto_0
    return-object v0

    .line 321
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/avira/android/threatlandscape/api/b;->e:Lcom/google/b/j;

    invoke-virtual {p1}, Lcom/avira/android/common/web/WebResult;->c()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/avira/android/threatlandscape/api/gson/ThreatLandscapeBulkResponseData;

    invoke-virtual {v0, v2, v3}, Lcom/google/b/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/threatlandscape/api/gson/ThreatLandscapeBulkResponseData;

    .line 325
    invoke-virtual {v0}, Lcom/avira/android/threatlandscape/api/gson/ThreatLandscapeBulkResponseData;->getEnabledList()[Z

    move-result-object v3

    .line 326
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    array-length v0, v3

    if-ge v2, v0, :cond_3

    .line 328
    aget-boolean v0, v3, v2

    .line 329
    if-nez v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/avira/android/threatlandscape/api/b;->d:Lcom/avira/android/utilities/t;

    const-string v4, "THRTLNDSCPEAPI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v0, "Response Disabled for "

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/threatlandscape/api/d;

    invoke-virtual {v0}, Lcom/avira/android/threatlandscape/api/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/b/x; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 339
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/avira/android/threatlandscape/api/b;->d:Lcom/avira/android/utilities/t;

    const-string v2, "THRTLNDSCPEAPI"

    const-string v3, "Invalid Bulk Response data."

    invoke-virtual {v0, v2, v3}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v0, v1

    .line 342
    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/HashMap;Landroid/content/Context;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/avira/android/antivirus/data/ScannerCallbackData;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 75
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-nez p2, :cond_1

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/avira/android/threatlandscape/api/b;->d:Lcom/avira/android/utilities/t;

    const-string v1, "THRTLNDSCPEAPI"

    const-string v2, "Invalid input parameters [1]"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 81
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    invoke-direct {p0, p1}, Lcom/avira/android/threatlandscape/api/b;->a(Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v5

    .line 86
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    .line 89
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/avira/android/threatlandscape/api/b;->d:Lcom/avira/android/utilities/t;

    const-string v3, "THRTLNDSCPEAPI"

    const-string v5, "Invalid Request parameters for Detection query."

    invoke-virtual {v0, v3, v5}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 91
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 94
    const-string v3, "%s Invalid detection(s) found\n"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/avira/android/threatlandscape/api/b;->d:Lcom/avira/android/utilities/t;

    const-string v2, "THRTLNDSCPEAPI"

    invoke-static {v2, v1}, Lcom/avira/android/utilities/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/avira/android/threatlandscape/api/b;->a(Ljava/util/HashMap;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 86
    goto :goto_1

    .line 89
    :cond_4
    if-eqz v0, :cond_5

    const v3, 0x7f08011c

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_3
    const/16 v6, 0x8

    const/16 v7, 0xb

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/avira/android/threatlandscape/api/b;->d:Lcom/avira/android/utilities/t;

    const-string v7, "THRTLNDSCPEAPI"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "peek "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/avira/android/utilities/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Querying %s detection(s)\n"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/avira/android/threatlandscape/api/b;->d:Lcom/avira/android/utilities/t;

    const-string v7, "THRTLNDSCPEAPI"

    invoke-static {v7, v6}, Lcom/avira/android/utilities/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/avira/android/threatlandscape/api/c;->a()Lcom/avira/android/threatlandscape/api/c;

    iget-object v6, p0, Lcom/avira/android/threatlandscape/api/b;->b:Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/avira/android/threatlandscape/api/b;->c:Lcom/avira/android/utilities/a;

    invoke-static {v5, v6, v7}, Lcom/avira/android/threatlandscape/api/c;->a(Ljava/util/ArrayList;Landroid/telephony/TelephonyManager;Lcom/avira/android/utilities/a;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/avira/android/threatlandscape/api/b;->a:Lcom/avira/android/common/web/o;

    invoke-static {v3, v6}, Lcom/avira/android/common/web/o;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/common/web/WebResult;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/avira/android/common/web/WebResult;->a()I

    move-result v3

    const/16 v7, 0xc8

    if-ne v3, v7, :cond_6

    move v3, v1

    :goto_4
    if-eqz v3, :cond_9

    if-eqz v0, :cond_7

    invoke-direct {p0, v6, v5}, Lcom/avira/android/threatlandscape/api/b;->a(Lcom/avira/android/common/web/WebResult;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto/16 :goto_2

    :cond_5
    const v3, 0x7f08011d

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_6
    move v3, v2

    goto :goto_4

    :cond_7
    invoke-direct {p0, v6, v5}, Lcom/avira/android/threatlandscape/api/b;->b(Lcom/avira/android/common/web/WebResult;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto/16 :goto_2

    .line 103
    :cond_8
    iget-object v0, p0, Lcom/avira/android/threatlandscape/api/b;->d:Lcom/avira/android/utilities/t;

    const-string v0, "THRTLNDSCPEAPI"

    const-string v1, "No Invalid detections."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    move-object v0, v4

    goto/16 :goto_2
.end method
