.class public final enum Lcom/avira/android/securebrowsing/c/m;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/securebrowsing/c/m;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/securebrowsing/c/m;

.field public static final enum DELETE:Lcom/avira/android/securebrowsing/c/m;

.field public static final enum GET:Lcom/avira/android/securebrowsing/c/m;

.field public static final enum HEAD:Lcom/avira/android/securebrowsing/c/m;

.field public static final enum OPTIONS:Lcom/avira/android/securebrowsing/c/m;

.field public static final enum POST:Lcom/avira/android/securebrowsing/c/m;

.field public static final enum PUT:Lcom/avira/android/securebrowsing/c/m;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 488
    new-instance v0, Lcom/avira/android/securebrowsing/c/m;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3}, Lcom/avira/android/securebrowsing/c/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/m;->GET:Lcom/avira/android/securebrowsing/c/m;

    new-instance v0, Lcom/avira/android/securebrowsing/c/m;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v4}, Lcom/avira/android/securebrowsing/c/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/m;->PUT:Lcom/avira/android/securebrowsing/c/m;

    new-instance v0, Lcom/avira/android/securebrowsing/c/m;

    const-string v1, "POST"

    invoke-direct {v0, v1, v5}, Lcom/avira/android/securebrowsing/c/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/m;->POST:Lcom/avira/android/securebrowsing/c/m;

    new-instance v0, Lcom/avira/android/securebrowsing/c/m;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v6}, Lcom/avira/android/securebrowsing/c/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/m;->DELETE:Lcom/avira/android/securebrowsing/c/m;

    new-instance v0, Lcom/avira/android/securebrowsing/c/m;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v7}, Lcom/avira/android/securebrowsing/c/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/m;->HEAD:Lcom/avira/android/securebrowsing/c/m;

    new-instance v0, Lcom/avira/android/securebrowsing/c/m;

    const-string v1, "OPTIONS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/avira/android/securebrowsing/c/m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/m;->OPTIONS:Lcom/avira/android/securebrowsing/c/m;

    .line 486
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/avira/android/securebrowsing/c/m;

    sget-object v1, Lcom/avira/android/securebrowsing/c/m;->GET:Lcom/avira/android/securebrowsing/c/m;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avira/android/securebrowsing/c/m;->PUT:Lcom/avira/android/securebrowsing/c/m;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avira/android/securebrowsing/c/m;->POST:Lcom/avira/android/securebrowsing/c/m;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avira/android/securebrowsing/c/m;->DELETE:Lcom/avira/android/securebrowsing/c/m;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avira/android/securebrowsing/c/m;->HEAD:Lcom/avira/android/securebrowsing/c/m;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/avira/android/securebrowsing/c/m;->OPTIONS:Lcom/avira/android/securebrowsing/c/m;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avira/android/securebrowsing/c/m;->$VALUES:[Lcom/avira/android/securebrowsing/c/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 486
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/avira/android/securebrowsing/c/m;
    .locals 5

    .prologue
    .line 492
    invoke-static {}, Lcom/avira/android/securebrowsing/c/m;->values()[Lcom/avira/android/securebrowsing/c/m;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 494
    invoke-virtual {v0}, Lcom/avira/android/securebrowsing/c/m;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 499
    :goto_1
    return-object v0

    .line 492
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 499
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/securebrowsing/c/m;
    .locals 1

    .prologue
    .line 486
    const-class v0, Lcom/avira/android/securebrowsing/c/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/securebrowsing/c/m;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/securebrowsing/c/m;
    .locals 1

    .prologue
    .line 486
    sget-object v0, Lcom/avira/android/securebrowsing/c/m;->$VALUES:[Lcom/avira/android/securebrowsing/c/m;

    invoke-virtual {v0}, [Lcom/avira/android/securebrowsing/c/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/securebrowsing/c/m;

    return-object v0
.end method
