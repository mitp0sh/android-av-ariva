.class public final enum Lcom/avira/android/securebrowsing/c/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/securebrowsing/c/o;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/securebrowsing/c/o;

.field public static final enum ACCEPTED:Lcom/avira/android/securebrowsing/c/o;

.field public static final enum BAD_REQUEST:Lcom/avira/android/securebrowsing/c/o;

.field public static final enum CREATED:Lcom/avira/android/securebrowsing/c/o;

.field public static final enum FORBIDDEN:Lcom/avira/android/securebrowsing/c/o;

.field public static final enum INTERNAL_ERROR:Lcom/avira/android/securebrowsing/c/o;

.field public static final enum METHOD_NOT_ALLOWED:Lcom/avira/android/securebrowsing/c/o;

.field public static final enum NOT_FOUND:Lcom/avira/android/securebrowsing/c/o;

.field public static final enum NOT_MODIFIED:Lcom/avira/android/securebrowsing/c/o;

.field public static final enum NO_CONTENT:Lcom/avira/android/securebrowsing/c/o;

.field public static final enum OK:Lcom/avira/android/securebrowsing/c/o;

.field public static final enum PARTIAL_CONTENT:Lcom/avira/android/securebrowsing/c/o;

.field public static final enum RANGE_NOT_SATISFIABLE:Lcom/avira/android/securebrowsing/c/o;

.field public static final enum REDIRECT:Lcom/avira/android/securebrowsing/c/o;

.field public static final enum UNAUTHORIZED:Lcom/avira/android/securebrowsing/c/o;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 872
    new-instance v0, Lcom/avira/android/securebrowsing/c/o;

    const-string v1, "OK"

    const/16 v2, 0xc8

    const-string v3, "OK"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/avira/android/securebrowsing/c/o;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/o;->OK:Lcom/avira/android/securebrowsing/c/o;

    new-instance v0, Lcom/avira/android/securebrowsing/c/o;

    const-string v1, "CREATED"

    const/16 v2, 0xc9

    const-string v3, "Created"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/avira/android/securebrowsing/c/o;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/o;->CREATED:Lcom/avira/android/securebrowsing/c/o;

    new-instance v0, Lcom/avira/android/securebrowsing/c/o;

    const-string v1, "ACCEPTED"

    const/16 v2, 0xca

    const-string v3, "Accepted"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/avira/android/securebrowsing/c/o;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/o;->ACCEPTED:Lcom/avira/android/securebrowsing/c/o;

    new-instance v0, Lcom/avira/android/securebrowsing/c/o;

    const-string v1, "NO_CONTENT"

    const/16 v2, 0xcc

    const-string v3, "No Content"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/avira/android/securebrowsing/c/o;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/o;->NO_CONTENT:Lcom/avira/android/securebrowsing/c/o;

    new-instance v0, Lcom/avira/android/securebrowsing/c/o;

    const-string v1, "PARTIAL_CONTENT"

    const/16 v2, 0xce

    const-string v3, "Partial Content"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/avira/android/securebrowsing/c/o;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/o;->PARTIAL_CONTENT:Lcom/avira/android/securebrowsing/c/o;

    .line 873
    new-instance v0, Lcom/avira/android/securebrowsing/c/o;

    const-string v1, "REDIRECT"

    const/4 v2, 0x5

    const/16 v3, 0x12d

    const-string v4, "Moved Permanently"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/securebrowsing/c/o;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/o;->REDIRECT:Lcom/avira/android/securebrowsing/c/o;

    new-instance v0, Lcom/avira/android/securebrowsing/c/o;

    const-string v1, "NOT_MODIFIED"

    const/4 v2, 0x6

    const/16 v3, 0x130

    const-string v4, "Not Modified"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/securebrowsing/c/o;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/o;->NOT_MODIFIED:Lcom/avira/android/securebrowsing/c/o;

    new-instance v0, Lcom/avira/android/securebrowsing/c/o;

    const-string v1, "BAD_REQUEST"

    const/4 v2, 0x7

    const/16 v3, 0x190

    const-string v4, "Bad Request"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/securebrowsing/c/o;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/o;->BAD_REQUEST:Lcom/avira/android/securebrowsing/c/o;

    .line 874
    new-instance v0, Lcom/avira/android/securebrowsing/c/o;

    const-string v1, "UNAUTHORIZED"

    const/16 v2, 0x8

    const/16 v3, 0x191

    const-string v4, "Unauthorized"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/securebrowsing/c/o;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/o;->UNAUTHORIZED:Lcom/avira/android/securebrowsing/c/o;

    new-instance v0, Lcom/avira/android/securebrowsing/c/o;

    const-string v1, "FORBIDDEN"

    const/16 v2, 0x9

    const/16 v3, 0x193

    const-string v4, "Forbidden"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/securebrowsing/c/o;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/o;->FORBIDDEN:Lcom/avira/android/securebrowsing/c/o;

    new-instance v0, Lcom/avira/android/securebrowsing/c/o;

    const-string v1, "NOT_FOUND"

    const/16 v2, 0xa

    const/16 v3, 0x194

    const-string v4, "Not Found"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/securebrowsing/c/o;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/o;->NOT_FOUND:Lcom/avira/android/securebrowsing/c/o;

    .line 875
    new-instance v0, Lcom/avira/android/securebrowsing/c/o;

    const-string v1, "METHOD_NOT_ALLOWED"

    const/16 v2, 0xb

    const/16 v3, 0x195

    const-string v4, "Method Not Allowed"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/securebrowsing/c/o;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/o;->METHOD_NOT_ALLOWED:Lcom/avira/android/securebrowsing/c/o;

    new-instance v0, Lcom/avira/android/securebrowsing/c/o;

    const-string v1, "RANGE_NOT_SATISFIABLE"

    const/16 v2, 0xc

    const/16 v3, 0x1a0

    const-string v4, "Requested Range Not Satisfiable"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/securebrowsing/c/o;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/o;->RANGE_NOT_SATISFIABLE:Lcom/avira/android/securebrowsing/c/o;

    .line 876
    new-instance v0, Lcom/avira/android/securebrowsing/c/o;

    const-string v1, "INTERNAL_ERROR"

    const/16 v2, 0xd

    const/16 v3, 0x1f4

    const-string v4, "Internal Server Error"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/avira/android/securebrowsing/c/o;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/o;->INTERNAL_ERROR:Lcom/avira/android/securebrowsing/c/o;

    .line 870
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/avira/android/securebrowsing/c/o;

    sget-object v1, Lcom/avira/android/securebrowsing/c/o;->OK:Lcom/avira/android/securebrowsing/c/o;

    aput-object v1, v0, v5

    sget-object v1, Lcom/avira/android/securebrowsing/c/o;->CREATED:Lcom/avira/android/securebrowsing/c/o;

    aput-object v1, v0, v6

    sget-object v1, Lcom/avira/android/securebrowsing/c/o;->ACCEPTED:Lcom/avira/android/securebrowsing/c/o;

    aput-object v1, v0, v7

    sget-object v1, Lcom/avira/android/securebrowsing/c/o;->NO_CONTENT:Lcom/avira/android/securebrowsing/c/o;

    aput-object v1, v0, v8

    sget-object v1, Lcom/avira/android/securebrowsing/c/o;->PARTIAL_CONTENT:Lcom/avira/android/securebrowsing/c/o;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/avira/android/securebrowsing/c/o;->REDIRECT:Lcom/avira/android/securebrowsing/c/o;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/avira/android/securebrowsing/c/o;->NOT_MODIFIED:Lcom/avira/android/securebrowsing/c/o;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/avira/android/securebrowsing/c/o;->BAD_REQUEST:Lcom/avira/android/securebrowsing/c/o;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/avira/android/securebrowsing/c/o;->UNAUTHORIZED:Lcom/avira/android/securebrowsing/c/o;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/avira/android/securebrowsing/c/o;->FORBIDDEN:Lcom/avira/android/securebrowsing/c/o;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/avira/android/securebrowsing/c/o;->NOT_FOUND:Lcom/avira/android/securebrowsing/c/o;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/avira/android/securebrowsing/c/o;->METHOD_NOT_ALLOWED:Lcom/avira/android/securebrowsing/c/o;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/avira/android/securebrowsing/c/o;->RANGE_NOT_SATISFIABLE:Lcom/avira/android/securebrowsing/c/o;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/avira/android/securebrowsing/c/o;->INTERNAL_ERROR:Lcom/avira/android/securebrowsing/c/o;

    aput-object v2, v0, v1

    sput-object v0, Lcom/avira/android/securebrowsing/c/o;->$VALUES:[Lcom/avira/android/securebrowsing/c/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 881
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 882
    iput p3, p0, Lcom/avira/android/securebrowsing/c/o;->a:I

    .line 883
    iput-object p4, p0, Lcom/avira/android/securebrowsing/c/o;->b:Ljava/lang/String;

    .line 884
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/securebrowsing/c/o;
    .locals 1

    .prologue
    .line 870
    const-class v0, Lcom/avira/android/securebrowsing/c/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/securebrowsing/c/o;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/securebrowsing/c/o;
    .locals 1

    .prologue
    .line 870
    sget-object v0, Lcom/avira/android/securebrowsing/c/o;->$VALUES:[Lcom/avira/android/securebrowsing/c/o;

    invoke-virtual {v0}, [Lcom/avira/android/securebrowsing/c/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/securebrowsing/c/o;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/avira/android/securebrowsing/c/o;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/o;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
