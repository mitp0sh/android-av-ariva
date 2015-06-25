.class public final enum Lcom/avira/android/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/android/h;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/android/h;

.field public static final enum RESET_ONLY:Lcom/avira/android/h;

.field public static final enum RESTART:Lcom/avira/android/h;

.field public static final enum TERMINATE:Lcom/avira/android/h;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 430
    new-instance v0, Lcom/avira/android/h;

    const-string v1, "TERMINATE"

    invoke-direct {v0, v1, v2}, Lcom/avira/android/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/h;->TERMINATE:Lcom/avira/android/h;

    new-instance v0, Lcom/avira/android/h;

    const-string v1, "RESTART"

    invoke-direct {v0, v1, v3}, Lcom/avira/android/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/h;->RESTART:Lcom/avira/android/h;

    new-instance v0, Lcom/avira/android/h;

    const-string v1, "RESET_ONLY"

    invoke-direct {v0, v1, v4}, Lcom/avira/android/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/android/h;->RESET_ONLY:Lcom/avira/android/h;

    .line 428
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/avira/android/h;

    sget-object v1, Lcom/avira/android/h;->TERMINATE:Lcom/avira/android/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avira/android/h;->RESTART:Lcom/avira/android/h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avira/android/h;->RESET_ONLY:Lcom/avira/android/h;

    aput-object v1, v0, v4

    sput-object v0, Lcom/avira/android/h;->$VALUES:[Lcom/avira/android/h;

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
    .line 428
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/android/h;
    .locals 1

    .prologue
    .line 428
    const-class v0, Lcom/avira/android/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/android/h;

    return-object v0
.end method

.method public static values()[Lcom/avira/android/h;
    .locals 1

    .prologue
    .line 428
    sget-object v0, Lcom/avira/android/h;->$VALUES:[Lcom/avira/android/h;

    invoke-virtual {v0}, [Lcom/avira/android/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/android/h;

    return-object v0
.end method
