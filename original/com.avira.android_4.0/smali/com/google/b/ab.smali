.class public abstract enum Lcom/google/b/ab;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/b/ab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/b/ab;

.field public static final enum DEFAULT:Lcom/google/b/ab;

.field public static final enum STRING:Lcom/google/b/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/google/b/ac;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1}, Lcom/google/b/ac;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/b/ab;->DEFAULT:Lcom/google/b/ab;

    .line 45
    new-instance v0, Lcom/google/b/ad;

    const-string v1, "STRING"

    invoke-direct {v0, v1}, Lcom/google/b/ad;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/b/ab;->STRING:Lcom/google/b/ab;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/b/ab;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/b/ab;->DEFAULT:Lcom/google/b/ab;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/b/ab;->STRING:Lcom/google/b/ab;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/b/ab;->$VALUES:[Lcom/google/b/ab;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/b/ab;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/b/ab;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/b/ab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/b/ab;

    return-object v0
.end method

.method public static values()[Lcom/google/b/ab;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/google/b/ab;->$VALUES:[Lcom/google/b/ab;

    invoke-virtual {v0}, [Lcom/google/b/ab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/b/ab;

    return-object v0
.end method
