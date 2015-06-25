.class public final enum Lcom/avira/android/blacklist/b/f;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/custom/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/blacklist/b/f;",
        ">;",
        "Lcom/avira/android/custom/h;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/blacklist/b/f;

.field public static final enum ALL:Lcom/avira/android/blacklist/b/f;

.field public static final enum NEW:Lcom/avira/android/blacklist/b/f;

.field public static final enum NONE:Lcom/avira/android/blacklist/b/f;

.field public static final enum TODAY:Lcom/avira/android/blacklist/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/avira/android/blacklist/b/f;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v2}, Lcom/avira/android/blacklist/b/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/blacklist/b/f;->ALL:Lcom/avira/android/blacklist/b/f;

    new-instance v0, Lcom/avira/android/blacklist/b/f;

    const-string v1, "TODAY"

    invoke-direct {v0, v1, v3}, Lcom/avira/android/blacklist/b/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/blacklist/b/f;->TODAY:Lcom/avira/android/blacklist/b/f;

    new-instance v0, Lcom/avira/android/blacklist/b/f;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v4}, Lcom/avira/android/blacklist/b/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/blacklist/b/f;->NEW:Lcom/avira/android/blacklist/b/f;

    new-instance v0, Lcom/avira/android/blacklist/b/f;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/avira/android/blacklist/b/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/blacklist/b/f;->NONE:Lcom/avira/android/blacklist/b/f;

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/avira/android/blacklist/b/f;

    sget-object v1, Lcom/avira/android/blacklist/b/f;->ALL:Lcom/avira/android/blacklist/b/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avira/android/blacklist/b/f;->TODAY:Lcom/avira/android/blacklist/b/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avira/android/blacklist/b/f;->NEW:Lcom/avira/android/blacklist/b/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avira/android/blacklist/b/f;->NONE:Lcom/avira/android/blacklist/b/f;

    aput-object v1, v0, v5

    sput-object v0, Lcom/avira/android/blacklist/b/f;->$VALUES:[Lcom/avira/android/blacklist/b/f;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/blacklist/b/f;
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/avira/android/blacklist/b/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/b/f;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/blacklist/b/f;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/avira/android/blacklist/b/f;->$VALUES:[Lcom/avira/android/blacklist/b/f;

    invoke-virtual {v0}, [Lcom/avira/android/blacklist/b/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/blacklist/b/f;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/avira/android/blacklist/b/f;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avira/android/blacklist/b/f;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
