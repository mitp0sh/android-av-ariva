.class public final Lcom/avira/android/threatlandscape/api/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/avira/android/threatlandscape/api/c;

.field private static b:Lcom/google/b/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/avira/android/threatlandscape/api/c;

    invoke-direct {v0}, Lcom/avira/android/threatlandscape/api/c;-><init>()V

    sput-object v0, Lcom/avira/android/threatlandscape/api/c;->a:Lcom/avira/android/threatlandscape/api/c;

    .line 25
    new-instance v0, Lcom/google/b/j;

    invoke-direct {v0}, Lcom/google/b/j;-><init>()V

    sput-object v0, Lcom/avira/android/threatlandscape/api/c;->b:Lcom/google/b/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static a()Lcom/avira/android/threatlandscape/api/c;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/avira/android/threatlandscape/api/c;->a:Lcom/avira/android/threatlandscape/api/c;

    return-object v0
.end method

.method public static a(Ljava/util/ArrayList;Landroid/telephony/TelephonyManager;Lcom/avira/android/utilities/a;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/threatlandscape/api/d;",
            ">;",
            "Landroid/telephony/TelephonyManager;",
            "Lcom/avira/android/utilities/a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 87
    const-string v1, ""

    .line 89
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 90
    if-gtz v4, :cond_0

    move-object v0, v1

    .line 132
    :goto_0
    return-object v0

    .line 96
    :cond_0
    if-ne v4, v0, :cond_1

    move v1, v0

    .line 98
    :goto_1
    new-instance v5, Lcom/avira/android/threatlandscape/api/gson/ProductData;

    invoke-direct {v5, p2}, Lcom/avira/android/threatlandscape/api/gson/ProductData;-><init>(Lcom/avira/android/utilities/a;)V

    .line 99
    new-array v6, v4, [Lcom/avira/android/threatlandscape/api/gson/DetectionData;

    .line 100
    new-array v7, v4, [Lcom/avira/android/threatlandscape/api/gson/MetaData;

    move v3, v2

    .line 102
    :goto_2
    if-ge v3, v4, :cond_2

    .line 104
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/threatlandscape/api/d;

    .line 106
    invoke-virtual {v0}, Lcom/avira/android/threatlandscape/api/d;->b()Ljava/lang/String;

    move-result-object v8

    .line 107
    new-instance v9, Lcom/avira/android/threatlandscape/api/gson/MetaData;

    invoke-direct {v9, v8, p1}, Lcom/avira/android/threatlandscape/api/gson/MetaData;-><init>(Ljava/lang/String;Landroid/telephony/TelephonyManager;)V

    .line 109
    new-instance v10, Lcom/avira/android/threatlandscape/api/gson/DetectionData;

    invoke-virtual {v0}, Lcom/avira/android/threatlandscape/api/d;->c()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Lcom/avira/android/threatlandscape/api/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v11, v0, v8}, Lcom/avira/android/threatlandscape/api/gson/DetectionData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    aput-object v10, v6, v3

    .line 112
    aput-object v9, v7, v3

    .line 102
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_1
    move v1, v2

    .line 96
    goto :goto_1

    .line 115
    :cond_2
    if-eqz v1, :cond_3

    .line 118
    new-instance v0, Lcom/avira/android/threatlandscape/api/gson/ThreatLandscapeSingleRequestData;

    aget-object v1, v6, v2

    aget-object v2, v7, v2

    invoke-direct {v0, v1, v5, v2}, Lcom/avira/android/threatlandscape/api/gson/ThreatLandscapeSingleRequestData;-><init>(Lcom/avira/android/threatlandscape/api/gson/DetectionData;Lcom/avira/android/threatlandscape/api/gson/ProductData;Lcom/avira/android/threatlandscape/api/gson/MetaData;)V

    .line 121
    sget-object v1, Lcom/avira/android/threatlandscape/api/c;->b:Lcom/google/b/j;

    const-class v2, Lcom/avira/android/threatlandscape/api/gson/ThreatLandscapeSingleRequestData;

    invoke-virtual {v1, v0, v2}, Lcom/google/b/j;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_3
    new-instance v0, Lcom/avira/android/threatlandscape/api/gson/ThreatLandscapeBulkRequestData;

    invoke-direct {v0, v6, v5, v7}, Lcom/avira/android/threatlandscape/api/gson/ThreatLandscapeBulkRequestData;-><init>([Lcom/avira/android/threatlandscape/api/gson/DetectionData;Lcom/avira/android/threatlandscape/api/gson/ProductData;[Lcom/avira/android/threatlandscape/api/gson/MetaData;)V

    .line 129
    sget-object v1, Lcom/avira/android/threatlandscape/api/c;->b:Lcom/google/b/j;

    const-class v2, Lcom/avira/android/threatlandscape/api/gson/ThreatLandscapeBulkRequestData;

    invoke-virtual {v1, v0, v2}, Lcom/google/b/j;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
