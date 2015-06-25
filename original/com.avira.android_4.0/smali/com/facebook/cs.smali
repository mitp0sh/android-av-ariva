.class public final enum Lcom/facebook/cs;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/cs;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/cs;

.field public static final enum CLOSED:Lcom/facebook/cs;

.field public static final enum CLOSED_LOGIN_FAILED:Lcom/facebook/cs;

.field public static final enum CREATED:Lcom/facebook/cs;

.field public static final enum CREATED_TOKEN_LOADED:Lcom/facebook/cs;

.field public static final enum OPENED:Lcom/facebook/cs;

.field public static final enum OPENED_TOKEN_UPDATED:Lcom/facebook/cs;

.field public static final enum OPENING:Lcom/facebook/cs;


# instance fields
.field private final a:Lcom/facebook/ct;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    new-instance v0, Lcom/facebook/cs;

    const-string v1, "CREATED"

    sget-object v2, Lcom/facebook/ct;->CREATED_CATEGORY:Lcom/facebook/ct;

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/cs;-><init>(Ljava/lang/String;ILcom/facebook/ct;)V

    sput-object v0, Lcom/facebook/cs;->CREATED:Lcom/facebook/cs;

    .line 47
    new-instance v0, Lcom/facebook/cs;

    const-string v1, "CREATED_TOKEN_LOADED"

    sget-object v2, Lcom/facebook/ct;->CREATED_CATEGORY:Lcom/facebook/ct;

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/cs;-><init>(Ljava/lang/String;ILcom/facebook/ct;)V

    sput-object v0, Lcom/facebook/cs;->CREATED_TOKEN_LOADED:Lcom/facebook/cs;

    .line 52
    new-instance v0, Lcom/facebook/cs;

    const-string v1, "OPENING"

    sget-object v2, Lcom/facebook/ct;->CREATED_CATEGORY:Lcom/facebook/ct;

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/cs;-><init>(Ljava/lang/String;ILcom/facebook/ct;)V

    sput-object v0, Lcom/facebook/cs;->OPENING:Lcom/facebook/cs;

    .line 58
    new-instance v0, Lcom/facebook/cs;

    const-string v1, "OPENED"

    sget-object v2, Lcom/facebook/ct;->OPENED_CATEGORY:Lcom/facebook/ct;

    invoke-direct {v0, v1, v7, v2}, Lcom/facebook/cs;-><init>(Ljava/lang/String;ILcom/facebook/ct;)V

    sput-object v0, Lcom/facebook/cs;->OPENED:Lcom/facebook/cs;

    .line 70
    new-instance v0, Lcom/facebook/cs;

    const-string v1, "OPENED_TOKEN_UPDATED"

    sget-object v2, Lcom/facebook/ct;->OPENED_CATEGORY:Lcom/facebook/ct;

    invoke-direct {v0, v1, v8, v2}, Lcom/facebook/cs;-><init>(Ljava/lang/String;ILcom/facebook/ct;)V

    sput-object v0, Lcom/facebook/cs;->OPENED_TOKEN_UPDATED:Lcom/facebook/cs;

    .line 78
    new-instance v0, Lcom/facebook/cs;

    const-string v1, "CLOSED_LOGIN_FAILED"

    const/4 v2, 0x5

    sget-object v3, Lcom/facebook/ct;->CLOSED_CATEGORY:Lcom/facebook/ct;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/cs;-><init>(Ljava/lang/String;ILcom/facebook/ct;)V

    sput-object v0, Lcom/facebook/cs;->CLOSED_LOGIN_FAILED:Lcom/facebook/cs;

    .line 83
    new-instance v0, Lcom/facebook/cs;

    const-string v1, "CLOSED"

    const/4 v2, 0x6

    sget-object v3, Lcom/facebook/ct;->CLOSED_CATEGORY:Lcom/facebook/ct;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/cs;-><init>(Ljava/lang/String;ILcom/facebook/ct;)V

    sput-object v0, Lcom/facebook/cs;->CLOSED:Lcom/facebook/cs;

    .line 28
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/facebook/cs;

    sget-object v1, Lcom/facebook/cs;->CREATED:Lcom/facebook/cs;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/cs;->CREATED_TOKEN_LOADED:Lcom/facebook/cs;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/cs;->OPENING:Lcom/facebook/cs;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/cs;->OPENED:Lcom/facebook/cs;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/cs;->OPENED_TOKEN_UPDATED:Lcom/facebook/cs;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/cs;->CLOSED_LOGIN_FAILED:Lcom/facebook/cs;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/cs;->CLOSED:Lcom/facebook/cs;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/cs;->$VALUES:[Lcom/facebook/cs;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/facebook/ct;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ct;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    iput-object p3, p0, Lcom/facebook/cs;->a:Lcom/facebook/ct;

    .line 89
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/cs;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/facebook/cs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/cs;

    return-object v0
.end method

.method public static values()[Lcom/facebook/cs;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/facebook/cs;->$VALUES:[Lcom/facebook/cs;

    invoke-virtual {v0}, [Lcom/facebook/cs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/cs;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/cs;->a:Lcom/facebook/ct;

    sget-object v1, Lcom/facebook/ct;->OPENED_CATEGORY:Lcom/facebook/ct;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/cs;->a:Lcom/facebook/ct;

    sget-object v1, Lcom/facebook/ct;->CLOSED_CATEGORY:Lcom/facebook/ct;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
