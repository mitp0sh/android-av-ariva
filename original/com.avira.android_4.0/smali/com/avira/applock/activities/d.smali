.class public final enum Lcom/avira/applock/activities/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/avira/applock/activities/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/avira/applock/activities/d;

.field public static final enum CHANGE_PIN:Lcom/avira/applock/activities/d;

.field public static final enum CONFIRM_CHANGE_PIN:Lcom/avira/applock/activities/d;

.field public static final enum CONFIRM_SETUP_PIN:Lcom/avira/applock/activities/d;

.field public static final enum SETUP_PIN:Lcom/avira/applock/activities/d;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/avira/applock/activities/d;

    const-string v1, "SETUP_PIN"

    invoke-direct {v0, v1, v2}, Lcom/avira/applock/activities/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/applock/activities/d;->SETUP_PIN:Lcom/avira/applock/activities/d;

    new-instance v0, Lcom/avira/applock/activities/d;

    const-string v1, "CONFIRM_SETUP_PIN"

    invoke-direct {v0, v1, v3}, Lcom/avira/applock/activities/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/applock/activities/d;->CONFIRM_SETUP_PIN:Lcom/avira/applock/activities/d;

    new-instance v0, Lcom/avira/applock/activities/d;

    const-string v1, "CHANGE_PIN"

    invoke-direct {v0, v1, v4}, Lcom/avira/applock/activities/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/applock/activities/d;->CHANGE_PIN:Lcom/avira/applock/activities/d;

    new-instance v0, Lcom/avira/applock/activities/d;

    const-string v1, "CONFIRM_CHANGE_PIN"

    invoke-direct {v0, v1, v5}, Lcom/avira/applock/activities/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/avira/applock/activities/d;->CONFIRM_CHANGE_PIN:Lcom/avira/applock/activities/d;

    .line 34
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/avira/applock/activities/d;

    sget-object v1, Lcom/avira/applock/activities/d;->SETUP_PIN:Lcom/avira/applock/activities/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/avira/applock/activities/d;->CONFIRM_SETUP_PIN:Lcom/avira/applock/activities/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/avira/applock/activities/d;->CHANGE_PIN:Lcom/avira/applock/activities/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/avira/applock/activities/d;->CONFIRM_CHANGE_PIN:Lcom/avira/applock/activities/d;

    aput-object v1, v0, v5

    sput-object v0, Lcom/avira/applock/activities/d;->$VALUES:[Lcom/avira/applock/activities/d;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/avira/applock/activities/d;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/avira/applock/activities/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/avira/applock/activities/d;

    return-object v0
.end method

.method public static values()[Lcom/avira/applock/activities/d;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/avira/applock/activities/d;->$VALUES:[Lcom/avira/applock/activities/d;

    invoke-virtual {v0}, [Lcom/avira/applock/activities/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/avira/applock/activities/d;

    return-object v0
.end method
